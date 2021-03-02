<?php

namespace App\Exceptions;

use Exception;
use Throwable;
use Illuminate\Support\Facades\Redirect;
use Yajra\DataTables\Exceptions\Exception as YeXception;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Support\Facades\Auth;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    // protected $dontReport = [
    //     //
    // ];

    protected $dontReport = [
        \Illuminate\Auth\AuthenticationException::class,
        \Illuminate\Auth\Access\AuthorizationException::class,
        \Symfony\Component\HttpKernel\Exception\HttpException::class,
        \Illuminate\Database\Eloquent\ModelNotFoundException::class,
        \Illuminate\Session\TokenMismatchException::class,
        \Illuminate\Validation\ValidationException::class,
    ];


    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'password',
        'password_confirmation',
    ];

    private function KOPAPIResponse($exception)
    {
        if (method_exists($exception, 'getStatusCode')) {
            $statusCode = $exception->getStatusCode();
        } else {
            $statusCode = 500;
        }

        $response = [];

        switch ($statusCode) {
            case 401:
                $response['message'] = 'Anda tidak mempunyai hak akses pada modul ini.';
                break;
            case 403:
                $response['message'] = 'Akses dibatasi untuk modul ini.';
                break;
            case 404:
                $response['message'] = 'Halaman yang anda tuju tidak dapat kami temukan';
                break;
            case 405:
                $response['message'] = 'Method Not Allowed';
                break;
            case 422:
                $response['message'] = $exception->original['message'];
                $response['errors'] = $exception->original['errors'];
                break;
            default:
                $response['message'] = ($statusCode == 500) ? 'Pesan internal server error' : $exception->getMessage();
                break;
        }

        if (config('app.debug')) {
            $response['trace'] = $exception->getTrace();
            $response['code'] = $exception->getCode();
        }

        $response['status'] = $statusCode;

        return response()->json($response, $statusCode);
    }

    public function report(Throwable $exception)
    {
        if (app()->bound('sentry') && $this->shouldReport($exception)) {
            app('sentry')->captureException($exception);
        }
    
        parent::report($exception);
    }

    public function render($request, Throwable $exception)
    {

        // if ($exception instanceof YeXception) {
        //     return response([
        //         'draw'            => 0,
        //         'recordsTotal'    => 0,
        //         'recordsFiltered' => 0,
        //         'data'            => [],
        //         'error'           => 'Laravel Error Handler',
        //     ]);
        // }

            if ($exception instanceof CustomException) {
                return response()->view('errors.500', [], 500);
            }

            $pesan = [
                'errors' => $exception->getMessage(),
                'code_line' => $exception->getLine(),
                'code_error' => $this->KOPAPIResponse($exception)->getStatusCode(),
                'pesan_error' => $this->KOPAPIResponse($exception)->getData('+')["message"],
           ];


           if(isset($exception->validator)){

                if($exception->validator->errors()->getMessages()["email"][0]){

                    return Redirect::route('voyager.login')->withErrors("maaf akun yang anda masukkan tidak ditemukan");

                }

           }
                else {

                    if(isset($pesan)){

                        if (!Auth::check()) {
                            return redirect()->route('voyager.login')->withErrors($pesan);
                        }

                        return redirect()->route('voyager.dashboard.index')->with($pesan);

                }
            }

    }

    protected function renderExceptionWithWhoops(Throwable $e)
    {
        // PrettyPageHandler - Shows a pretty error page when something goes pants-up
        // PlainTextHandler - Outputs plain text message for use in CLI applications
        // CallbackHandler - Wraps a closure or other callable as a handler. You do not need to use this handler explicitly, whoops will automatically wrap any closure or callable you pass to Whoops\Run::pushHandler
        // JsonResponseHandler - Captures exceptions and returns information on them as a JSON string. Can be used to, for example, play nice with AJAX requests.
        // XmlResponseHandler - Captures exceptions and returns information on them as a XML string. Can be used to, for example, play nice with AJAX requests.
        $whoops = new \Whoops\Run;
        $whoops->pushHandler(new \Whoops\Handler\PrettyPageHandler());
        $whoops->register();

        return new \Illuminate\Http\Response(
            $whoops->handleException($e),
            $e->getStatusCode(),
            $e->getHeaders()
        );
    }

}