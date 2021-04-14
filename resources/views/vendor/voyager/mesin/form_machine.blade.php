
@extends('voyager::master')

{{-- @section('page_title', __('voyager::generic.'.(isset($dataTypeContent->id) ? 'edit' : 'add')).' '.$dataType->getTranslatedAttribute('display_name_singular')) --}}

@section('css')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@stop

@section('page_header')
    <h1 class="page-title">
        <i class="voyager-plus"></i>
        Master mesin
    </h1>
@stop

@section('content')
    <div class="page-content container-fluid">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#machine_frm">Form machine</a></li>
            <li><a href="#penyusutan_frm">Form Penyusutan</a></li>
            {{-- <li><a href="#labor_frm">Form Labor</a></li> --}}
            <li><a href="#mtc_frm">Form MTC</a></li>
          </ul>
    <div class="tab-content">
        <div id="machine_frm" class="tab-pane fade in active">
    {{ csrf_field() }}
        <form id="formlistriks" class="form-edit-add" role="form" method="POST" enctype="multipart/form-data" autocomplete="off">
            <div class="row">
                    <div class="col-md-8">
                        <div class="panel panel-bordered">
                            <div class="panel-body">
                                <div class="contanier">
                                    <div class="form-group">
                                        <label for="url_instagram">Nama mesin</label>
                                        <input type="text" class="form-control" data-validate-length-range="2" data-validate-words="2" id="code_mesin" name="code_mesin" placeholder="Nama mesin" required="required" >
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Company</label>
                                        <select class="form-control select2" id="company_id" name="company_id" required>
                                            @foreach ($company as $c)
                                        <option value="{{$c->id}}">{{$c->company_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Category</label>
                                        <select class="form-control select2" id="category_bagian_id" name="category_bagian_id" required>
                                            @foreach ($cbagian as $cb)
                                            <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Group mesin</label>
                                        <select class="form-control select2" id="group_mesin_id" name="group_mesin_id" required>
                                            @foreach ($group_mesin as $c)
                                        <option value="{{$c->id}}">{{$c->nama_kategori_mesin}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="program_id">Shift</label>
                                        <select class="form-control select2" id="asumsi_id" name="asumsi_id" required>
                                            @foreach ($LwbpMaster as $c)
                                        <option value="{{$c->id}}">{{ $c->shift }}</option>
                                            @endforeach
                                        </select>   
                                    </div>


                                    {{-- ini diganti field REC 1.1 <div class="form-group">
                                        <label for="program_id">Kapasitas mesin</label>
                                        <select class="form-control select2" id="listrik_perjam_id" name="listrik_perjam_id" required>
                                            @foreach ($LsOutputPerjam as $c)
                                            <option value="{{$c->id}}">{{ $c->output_perjam }}</option>
                                        {{-- <option value="{{$c->id}}">{{ RumusListrikOutputPerjam::percent($c->persen)}} - {{ $c->output_perjam }}</option> --}}
                                            {{-- @endforeach
                                        </select> --}}
                                    {{-- </div> --}}

                                    <div class="form-group">
                                        <label for="url_instagram">Kapasitas mesin</label>
                                        <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="listrik_perjam_id" name="listrik_perjam_id" placeholder="Jumlah kapasitas mesin">
                                    </div>
                                  
                                <div class="form-group">
                                    <label for="url_instagram">Deskripsi</label>
                                    <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="deskripsi" name="deskripsi" placeholder="Deskripsi mesin">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Ampere</label>
                                    <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="ampere" name="ampere" placeholder="Ampere">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Voltase</label>
                                    <input type="text" class="form-control" id="voltase" data-validate-length-range="6" data-validate-words="2" name="voltase" placeholder="Voltase">
                                </div>
                                <div class="form-group">
                                    <label for="program_id">Lokasi mesin</label>
                                    <select class="form-control select2" id="location_mch_id" name="location_mch_id" required>
                                        @foreach ($LocationMachine as $c)
                                    <option value="{{$c->id}}">{{ $c->company_name }}</option>
                                        @endforeach
                                    </select>   
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Faktor Kali LWBP</label>
                                    <input type="text" class="form-control" data-validate-length-range="6" data-validate-words="2" id="faktor_kali_lwbp" name="faktor_kali_lwbp" placeholder="Faktor kali LWBP">
                                </div>
                                <div class="form-group">
                                    <label for="url_instagram">Faktor Kali WBP</label>
                                    <input type="text" class="form-control" id="faktor_kali_wbp" data-validate-length-range="6" data-validate-words="2" name="faktor_kali_wbp" placeholder="Faktor kali WBP">
                                </div>
                            </div>
                            {{-- <button type="submit" class="btn btn-primary pull-right save_mach">Simpan</button>&nbsp; --}}

                            {{-- <button type="submit" class="btn btn-primary pull-right save">
                                Add Donation
                            </button> --}}
                        {{-- </form> --}}
                        </div>
                    </div>
            </div>

                </div>
                  
                    </div>
                    <div id="penyusutan_frm" class="tab-pane fade">
                        <h3>Penyusutan</h3>
                        <div class="page-content container-fluid">


                            {{-- <form class="form-edit-add" role="form"
                                method="POST" enctype="multipart/form-data" autocomplete="off"> --}}
                    
                                {{-- {{ csrf_field() }} --}}
                    
                                <div class="row">
                                        <div class="col-md-8">
                                            <div class="panel panel-bordered">
                                                <div class="panel-body">
                                                    <div class="contanier">
                    
                                                        {{-- <div class="form-group">
                                                            <label for="program_id">Mesin</label>
                                                            <select class="form-control select2" id="code_mesins" name="code_mesins" required>
                                                                @foreach ($mesin as $m)
                                                            <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                        <input type="text" class="form-control" id="code_mesin_id" name="code_mesin_id" placeholder="">
                     --}}
                    
                                                        {{-- <div class="form-group">
                                                            <label for="program_id">Company</label>
                                                            <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                                                @foreach ($company as $c)
                                                            <option value="{{$c->id}}">{{$c->company_name}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div> --}}
                    
                                                        {{-- <div class="form-group">
                                                            <label for="company">Company</label>
                                                            <input type="text" class="form-control" id="company_display" name="company_display" placeholder="">
                                                            <input type="text" class="form-control" id="company_parent_id" name="company_parent_id" placeholder="">
                                                        </div>
                                                 --}}
                                                        {{-- <div class="form-group">
                                                            <label for="program_id">Mesin</label>
                                                            <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                                                @foreach ($mesin as $m)
                                                            <option value="{{$m->id}}">{{$m->code_mesin}} - {{$m->deskripsi}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div> --}}
                    
                                                        {{-- <div class="form-group">
                                                            <label for="program_id">Category</label>
                                                            <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                                                @foreach ($cbagian as $cb)
                                                            <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                                                @endforeach
                                                            </select>
                                                        </div> --}}
                                                        {{-- <div class="form-group">
                                                            <label for="company">Kategori Bagian</label>
                                                            <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder="">
                                                            <input type="text" class="form-control" id="category_bagian" name="category_bagian" placeholder="">
                                                        </div> --}}
                    
                                                        <div class="form-group">
                                                            <label for="url_instagram">Nama SIM</label>
                                                            <input type="text" class="form-control" id="nama_sim" name="nama_sim" placeholder="Nama SIM">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="url_instagram">Purchase</label>
                                                            <input type="text" class="form-control" id="purchaseorder_value" name="purchaseorder_value" placeholder="Purchase value">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="url_instagram">Umur(bulan)</label>
                                                            <input type="text" class="form-control" id="umur" name="umur" placeholder="Umur (Bulan)">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                    
                                    <div class="col-md-4">
                                        <div class="panel panel-bordered">
                                        <div class="panel-body">
                                            <h3>Penyusutan/Bulan</h3>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <span>Penyusutan. Perbulannya :</span>
                                                </div>
                                                <div class="container">
                                                        <input type="text" readonly="true" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder="">
                                                </div>
                                            </div>
                    
                                            {{-- <div class="row">
                                                <div class="col-md-4">
                                                    <span>%</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <span> <input type="text" class="form-control" id="persenlistriks" name="persenlistriks" placeholder=""></span>
                                                </div>
                                            </div> --}}
                    
                                            {{-- <div class="row">
                                                <div class="col-md-4">
                                                    <span>Domisili</span>
                                                </div>
                                                <div class="col-md-8">
                                                    <span>KODEPOS:{{$donatur->kelurahan->kd_pos}}, Kel. {{$donatur->kelurahan->kelurahan}}, Kec. {{$donatur->kelurahan->kecamatan->kecamatan}}, Kota/Kab. {{$donatur->kelurahan->kecamatan->kabkot->kabupaten_kota}}, Prov. {{$donatur->kelurahan->kecamatan->kabkot->provinsi->provinsi}}
                                                    </span>
                                                </div>
                                            </div> --}}
                    
                                        </div>

                                        {{-- <button type="submit" class="btn btn-primary pull-right save_peny">Hitung biaya penyusutan</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --}}
                                    </div>
                                    </div>

                                </div>
                    
                                {{-- <button type="submit" class="btn btn-primary pull-right save">
                                    Add Donation
                                </button> --}}
                            {{-- </form> --}}
                        </div>
                    </div>
                    {{-- form mtc --}}
                    <div id="labor_frm" class="tab-pane fade">
                        <h3>Labor</h3>
                        <div class="page-content container-fluid">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="panel panel-bordered">
                                        <div class="panel-body">
                                            <div class="contanier">
                                                <div class="form-group">
                                                    <label for="program_id">Group mesin</label>
                                                        <select class="form-control select2" id="group_mesin_ids" name="group_mesin_ids" required>
                                                        @foreach ($group_mesin as $m)
                                                    <option value="{{$m->id}}">{{$m->nama_kategori_mesin}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <input type="text" class="form-control hidden" id="code_mesin_ids" name="code_mesin_ids" placeholder="">
            
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Company</label>
                                                    <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                                        @foreach ($company as $c)
                                                    <option value="{{$c->id}}">{{$c->company_name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                         --}}
                                         <div class="form-group">
                                            <label for="company">kategori bagian group mesin</label>
                                            <input type="text" class="form-control" id="category_bagian_display_labor" name="category_bagian_display_labor" placeholder="">
                                            <input type="text" class="form-control" id="category_bagian_id_labor" name="category_bagian_id_labor" placeholder="">
            
                                        </div>
                                         <div class="form-group">
                                            <label for="company">Company</label>
                                            <input type="text" class="form-control" id="company_display_labor" name="company_display_labor" placeholder="">
                                            <input type="text" class="form-control" id="company_parent_id_labor" name="company_parent_id_labor" placeholder="">
                                        </div>
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Mesin</label>
                                                    <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                                        @foreach ($mesin as $m)
                                                    <option value="{{$m->id}}">{{$m->code_mesin}} - {{$m->deskripsi}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
            
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Category</label>
                                                    <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                                        @foreach ($cbagian as $cb)
                                                    <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
                                                {{-- <div class="form-group">
                                                    <label for="company">Kategori Bagian</label> --}}
                                                    {{-- <input type="text" class="form-control" id="category_bagian_display" name="category_bagian_display" placeholder=""> --}}
                                                {{-- </div> --}}
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Mesin</label>
                                                    <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                                        @foreach ($mesin as $m)
                                                    <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
                                                <div class="form-group"> 
                                                    <label for="company">Shift</label>
                                                    <input type="text" class="form-control" id="shift_display_labor" name="shift_display_labor" placeholder="">
                                                    <input type="text" class="form-control" id="shift_labor" name="shift_labor" placeholder="">
                                                </div>
            
                                                {{-- <div class="form-group">
                                                    <label for="url_instagram">Mesin yang ditangani</label>
                                                    <input type="text" class="form-control removeLater" id="jumlah_penangganan_mesin" name="jumlah_penangganan_mesin" placeholder="Jumlah mesin yang ditangani (Khusus Inputan SPV)">
                                                </div> --}}
            
                                                <div class="form-group mesinch">
                                                    <label for="msncheck">Jumlah mesin yang ditanggani</label>
                                                    <ul><div id="mesinttid" class="mesintt"></div></ul>
                                                    {{-- <input type="text" class="form-control removeLater" id="jumlah_penangganan_mesin" name="jumlah_penangganan_mesin" placeholder="Jumlah mesin yang ditangani (Khusus Inputan SPV)"> --}}
                                                </div>
            
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Shift</label>
                                                    <select class="form-control select2" id="shift" name="shift" required>
                                                        @foreach ($listrikShift as $x)
                                                        <option value="{{$x->shift}}">{{ $x->code_listrik}} - {{ $x->shift}} </option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
            
                                                <div class="form-group">
                                                    <label for="url_instagram">Jumlah Karyawan SPV</label>
                                                    <input type="text" class="form-control removeLater" id="supervisor" name="supervisor" placeholder="Jumlah Supervisor">
                                                </div>
                                                <div class="form-group">
                                                    <label for="url_instagram">Jumlah Karyawan Operator</label>
                                                    <input type="text" class="form-control removeLater" id="operator" name="operator" placeholder="Jumlah Operator">
                                                </div>
                                                <div class="form-group">
                                                    <label for="url_instagram">Jumlah karyawan helper</label>
                                                    <input type="text" class="form-control removeLater" id="helper" name="helper" placeholder="Jumlah Helper">
                                                </div>
                                                <div class="form-group">
                                                    <label for="url_instagram">Jumlah karyawan supporting</label>
                                                    <input type="text" class="form-control removeLater" id="supporting" name="supporting" placeholder="Jumlah Supporting">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
            
                            <div class="col-md-4">
                                <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <h3>Biaya Gaji / Upah (Per bulan)</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Informasi gaji karyawan </span>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Gaji Supervisor :</span>
                                        </div>
                                        <div class="container">
                                                <input type="text" readonly="true" class="form-control" id="gaji_supervisor" name="gaji_supervisor" placeholder="">
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Gaji Operator :</span>
                                        </div>
                                        <div class="container">
                                                <input type="text" readonly="true" class="form-control" id="gaji_operator" name="gaji_operator" placeholder="">
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-6">
                                            <span>Gaji Helper :</span>
                                        </div>
                                        <div class="container">
                                                <input type="text" readonly="true" class="form-control" id="gaji_helper" name="gaji_helper" placeholder="">
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-8">
                                            <span>Total biaya gaji upah karyawan :</span>
                                        </div>
                                        <div class="container">
                                                <input type="text" readonly="true" class="form-control" id="total_perbulan_ps" name="total_perbulan_ps" placeholder="">
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-8">
                                            <span>Jumlah Mesin yang ditanggani :</span>
                                        </div>
                                        <div class="container">
                                                <input type="text" readonly="true" class="form-control" id="jumlah_mesin_yangditangani" name="jumlah_mesin_yangditangani" placeholder="">
                                        </div>
                                    </div>
            
                                    {{-- <div class="row">
                                        <div class="col-md-4">
                                            <span>Domisili</span>
                                        </div>
                                        <div class="col-md-8">
                                            <span>KODEPOS:{{$donatur->kelurahan->kd_pos}}, Kel. {{$donatur->kelurahan->kelurahan}}, Kec. {{$donatur->kelurahan->kecamatan->kecamatan}}, Kota/Kab. {{$donatur->kelurahan->kecamatan->kabkot->kabupaten_kota}}, Prov. {{$donatur->kelurahan->kecamatan->kabkot->provinsi->provinsi}}
                                            </span>
                                        </div>
                                    </div> --}}
            
                                </div>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div id="mtc_frm" class="tab-pane fade">
                        <h3>MTC</h3>
                        <div class="page-content container-fluid">


                            <div class="row">
                                <div class="col-md-8">
                                    <div class="panel panel-bordered">
                                        <div class="panel-body">
                                            <div class="contanier">
            
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Company</label>
                                                    <select class="form-control select2" id="company_parent_id" name="company_parent_id" required>
                                                        @foreach ($company as $c)
                                                    <option value="{{$c->id}}">{{$c->company_name}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Mesin</label>
                                                    <select class="form-control select2" id="code_mesin_mtc" name="code_mesin_mtc" required>
                                                        @foreach ($mesin as $m)
                                                    <option value="{{$m->id}}">{{$m->code_mesin}}</option>
                                                        @endforeach
                                                    </select>
                                                </div>
                                                <input type="text" class="form-control" id="code_mesin_id_mtc" name="code_mesin_id_mtc" placeholder="">
            
                                                <div class="form-group">
                                                    <label for="company">Company</label>
                                                    <input type="text" class="form-control" id="company_display_mtc" name="company_display_mtc placeholder="">
                                                    <input type="text" class="form-control" id="company_parent_id_mtc" name="company_parent_id_mtc placeholder="">
                                                </div>
            
                                                <div class="form-group">
                                                    <label for="company">Kategori Bagian</label>
                                                    <input type="text" class="form-control" id="category_bagian_display_mtc" name="category_bagian_display_mtc" placeholder="">
                                                    <input type="text" class="form-control" id="category_bagian_mtc" name="category_bagian_mtc" placeholder="">
                                                </div>
                                         --}}
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Mesin</label>
                                                    <select class="form-control select2" id="code_mesin" name="code_mesin" required>
                                                        @foreach ($mesin as $m)
                                                    <option value="{{$m->id}}">{{$m->code_mesin}} - {{$m->deskripsi}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
            
                                                {{-- <div class="form-group">
                                                    <label for="program_id">Category</label>
                                                    <select class="form-control select2" id="category_bagian" name="category_bagian" required>
                                                        @foreach ($cbagian as $cb)
                                                    <option value="{{$cb->id}}">{{$cb->nama_bagian}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
            {{-- 
                                                <div class="form-group">
                                                    <label for="program_id">Listrik Output Perjam</label>
                                                    <select class="form-control select2" id="percent" name="percent" required>
                                                        @foreach ($LsOutputPerjam as $ls)
                                                    <option value="{{$ls->persen}}">{{$ls->persen}}</option>
                                                        @endforeach
                                                    </select>
                                                </div> --}}
                                                {{-- <div class="form-group"> --}}
                                                    {{-- <label for="company">Listrik /Jam</label> --}}
                                                    {{-- <input type="text" class="form-control" id="perjam_display" name="perjam_display" placeholder=""> --}}
                                                    {{-- <input type="text" class="form-control" id="perjam" name="perjam" placeholder=""> --}}
                                                {{-- </div> --}}
            
                                                <div class="form-group">
                                                    <label for="url_instagram">Perbaikan tahun 1</label>
                                                    <input type="text" class="form-control removeLater" id="perbaikan_tahun1" name="perbaikan_tahun1" placeholder="Biaya perbaikan tahun 1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="url_instagram">Perbaikan tahun 2</label>
                                                    <input type="text" class="form-control removeLater" id="perbaikan_tahun2" name="perbaikan_tahun2" placeholder="Biaya perbaikan tahun 2">
                                                </div>
            
                                                <div class="form-group">
                                                    <label for="url_instagram">Perbaikan tahun 3</label>
                                                    <input type="text" class="form-control removeLater" id="perbaikan_tahun3" name="perbaikan_tahun3" placeholder="Biaya perbaikan tahun 3">
                                                </div>
            
                                                <div class="form-group">
                                                    <label for="url_instagram">Sparepart tahun 1</label>
                                                    <input type="text" class="form-control removeLater" id="sparepart_tahun1" name="sparepart_tahun1" placeholder="Biaya perbaikan tahun 1">
                                                </div>
                                                <div class="form-group">
                                                    <label for="url_instagram">Sparepart tahun 2</label>
                                                    <input type="text" class="form-control removeLater" id="sparepart_tahun2" name="sparepart_tahun2" placeholder="Biaya perbaikan tahun 2">
                                                </div>
            
                                                <div class="form-group">
                                                    <label for="url_instagram">Sparepart tahun 3</label>
                                                    <input type="text" class="form-control removeLater" id="sparepart_tahun3" name="sparepart_tahun3" placeholder="Biaya perbaikan tahun 3">
                                                </div>
            
                                            </div>
                                        </div>
                                    </div>
                                </div>
            
                            <div class="col-md-4">
                                <div class="panel panel-bordered">
                                <div class="panel-body">
                                    <h3>RPT MTC /Bulan & /Tahun</h3>
                                    <div class="row">
                                        <div class="col-md-8">
                                            <span>Total Biaya Sparepart dan Perbaikan di susutkan dalam 4 tahun :</span>
                                        </div>
                                        <div class="container">
                                                {{-- <input type="text" class="form-control" id="total_perbulan_p" name="total_perbulan_p" placeholder=""> --}}
                                        </div>
                                    </div><br/>
            
                                    <div class="row">
                                        <div class="col-md-4">
                                            <span>Rata rata perbaikan perbulan</span>
                                        </div>
                                        <div class="col-md-8">
                                            <input type="text" readonly="true" class="form-control" id="rtrtperbaikanperbulan" name="rtrtperbaikanperbulan" placeholder="">
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-4">
                                            <span>Rata rata sparepart perbulan</span>
                                        </div>
                                        <div class="col-md-8">
                                          <input type="text" readonly="true" class="form-control" id="sparepart_perbulan" name="sparepart_perbulan" placeholder="">
            
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-4">
                                            <span>Biaya Produksi lain</span>
                                        </div>
                                        <div class="col-md-8">
                                          <input type="text" readonly="true" class="form-control" id="biaya_produksi_lain" name="biaya_produksi_lain" placeholder="">
            
                                        </div>
                                    </div>
            
                                    <div class="row">
                                        <div class="col-md-4">
                                            <span>Total biaya perbulan</span>
                                        </div>
                                        <div class="col-md-8">
                                          <input type="text" readonly="true" class="form-control" id="total_biaya_perbulan" name="total_biaya_perbulan" placeholder="">
            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>


                            <button type="submit" class="btn btn-primary pull-right save_mach">Simpan & hitung</button>&nbsp;

                            </form>
                        </div>
                    </div>
                    {{-- end form mtc --}}
        </div>
        
    </div>
@stop

@section('javascript')
    <script>

    function formatCurrency(x) {
        return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
    }

    function isEmpty(value){
                var isEmptyObject = function(a) {
                    if (typeof a.length === 'undefined') { // it's an Object, not an Array
                    var hasNonempty = Object.keys(a).some(function nonEmpty(element){
                        return !isEmpty(a[element]);
                    });
                    return hasNonempty ? false : isEmptyObject(Object.keys(a));
                    }

                    return !a.some(function nonEmpty(element) { // check if array is really not empty as JS thinks
                    return !isEmpty(element); // at least one element should be non-empty
                    });
                };
        return (
            value == false
            || typeof value === 'undefined'
            || value == null
            || (typeof value === 'object' && isEmptyObject(value))
        );
    }

        $('document').ready(function () {

            $('.toggleswitch').bootstrapToggle();

            $(".nav-tabs a").click(function(){
                $(this).tab('show');
            });
            $('.nav-tabs a').on('shown.bs.tab', function(event){
                var x = $(event.target).text();         
                var y = $(event.relatedTarget).text();  
                $(".act span").text(x);
                $(".prev span").text(y);
            });

            $("#category_bagian").hide();
            $("#code_mesin_id").hide();
            $("#company_parent_id").hide();
            $("#company_display").prop("disabled", true);
            $("#category_bagian_display").prop("disabled", true);

            
        $('#location_mch_id').on('change', function() {
            GetFullLocationMachineID(this.value).then(function(results){
                            // results.detail.forEach(function(eval) {
                                $("#faktor_kali_lwbp").val(results.detail.faktor_lwbp);
                                $("#faktor_kali_wbp").val(results.detail.faktor_wbp);
                            // })
                    
                            
                });
        });

        $('#code_mesins').on('change', function() {
            GetFullDataMesin(this.value).then(function(results){
                    $("#code_mesin_id").val(results.detail.id);
                    $("#company_display").val(results.detail.company_to.company_name);
                    $("#company_parent_id").val(results.detail.company_to.id);
                    $("#category_bagian_display").val(results.detail.kbagian_to.nama_bagian);
                    $("#category_bagian").val(results.detail.kbagian_to.id);
                            
                });
            });

        $('#code_mesin').on('change', function() {
            $("#code_mesin_ids").val($(this).val());
        });

        $("#company_parent_id_labor").hide();
        $("#category_bagian_id_labor").hide();
        $("#shift_labor").hide();

        $("#faktor_kali_lwbp").prop('disabled', 'disabled');
                                $("#faktor_kali_wbp").prop('disabled','disabled');

            $('#group_mesin_ids').on('change', function() {
                GetFullDataMesin_Labor(this.value).then(function(results){
                        if(isEmpty(results.detail) == false){

                            results.detail.forEach(function(eval) {
                                var element = $('<input id="mesnid" type="checkbox" name="code_mesins_lbr[]" value="'+eval.id+'"> <span class="badge badge-primary"> '+eval.code_mesin+' </span></>');
                                $("#company_display_labor").val(eval.company_to.company_name);
                                $("#company_parent_id_labor").val(eval.company_to.id);
                                $("#category_bagian_display_labor").val(eval.kbagian_to.nama_bagian);
                                $("#category_bagian_id_labor").val(eval.kbagian_to.id);
                                $("#shift_display_labor").val("Mesin shift ke "+eval.asumsi_to.shift);
                                $("#shift_labor").val(eval.asumsi_to.shift);
                                $("<div/>").addClass("notification").appendTo(".mesinch");         // original is gone
     
                                $(".notification").each(function(){
                                    
                                    $(this).append(element);

                                });

                            })
                    
                    } else if(isEmpty(results.detail) == true) {
                              
                        $(".notification").remove();

                    }
                            
                });
            });


        });

        async function GetFullLocationMachineID(mesinid
                ) {
                    let datamesinid = {
                            // ctgId:mesinid,
                            group_mesin_id:mesinid
                        }
                const apiDataMesin = "{{ route('detail.data.detaillocationID') }}";
                        
                    const settings = {
                                method: 'POST',
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                                    'Content-Type': 'application/json;charset=utf-8'
                                    },
                                body: JSON.stringify(datamesinid)
                        }
                        try {
                                
                                const fetchResponse = await fetch(`${apiDataMesin}`, settings);
                                const data = await fetchResponse.json();
                                return data;
                            } catch (error) {
                            return error
                        }    
                    }

        async function GetFullDataMesin(mesinid
                ) {
                    let datamesinid = {
                            // ctgId:mesinid,
                            group_mesin_id:mesinid
                        }
                const apiDataMesin = "{{ route('detail.data.mesin') }}";
                        
                    const settings = {
                                method: 'POST',
                                headers: {
                                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                                    'Content-Type': 'application/json;charset=utf-8'
                                    },
                                body: JSON.stringify(datamesinid)
                        }
                        try {
                                
                                const fetchResponse = await fetch(`${apiDataMesin}`, settings);
                                const data = await fetchResponse.json();
                                return data;
                            } catch (error) {
                            return error
                        }    
                    }

        $(document).ready(function() {

            $('.save_mach').click(function(event) {
            
                event.preventDefault();

                var data = [];
                $("input[name='code_mesins_lbr[]']:checked").each(function() {
                    data.push($(this).val());
                });

                var formData = {
                    'ampere'             : $('input[name=ampere]').val(),
                    'deskripsi'             : $('input[name=deskripsi]').val(),
                    'faktor_kali_wbp'             : $('input[name=faktor_kali_wbp]').val(),
                    'faktor_kali_lwbp'             : $('input[name=faktor_kali_lwbp]').val(),
                    'voltase'            : $('input[name=voltase]').val(),
                    'code_mesin'    : $('input[name=code_mesin]').val(),
                    'group_mesin_id'   : $('select[name=group_mesin_id]').val(),
                    'location_mch_id'   : $('select[name=location_mch_id]').val(),
                    'category_bagian_id'     : $('select[name=category_bagian_id]').val(),
                    // 'listrik_perjam_id'        : $('select[name=listrik_perjam_id]').val(),
                    'listrik_perjam_id'        : $('input[name=listrik_perjam_id]').val(),
                    'asumsi_id'             : $('select[name=asumsi_id]').val(),
                    'company_id'    : $('select[name=company_id]').val(),
                    'nama_sim'    : $('input[name=nama_sim]').val(),
                    'purchaseorder_value'    : $('input[name=purchaseorder_value]').val(),
                    'umur'    : $('input[name=umur]').val(),
                    //form labor
                    // 'company_parent_id_labor'     : $('input[name=company_parent_id_labor]').val(),
                    // 'code_mesin_ids'            : $('input[name=code_mesin_ids]').val(),
                    // 'category_bagian_id_labor'       : $('input[name=category_bagian_id_labor]').val(),
                    // 'shift_labor'                 : $('input[name=shift_labor]').val(),
                    // 'supervisor'            : $('input[name=supervisor]').val(),
                    // 'operator'              : $('input[name=operator]').val(),
                    // 'helper'                : $('input[name=helper]').val(),
                    // 'supporting'            : $('input[name=supporting]').val(),
                    // 'jumlah_penangganan_mesin' : $('input[name=jumlah_penangganan_mesin]').val(),
                    //form mtc
                    'code_mesin_id_mtc'          : $('input[name=code_mesin_id_mtc]').val(),
                    'category_bagian_mtc'     : $('input[name=category_bagian_mtc]').val(),
                    'perjam_mtc'             : $('input[name=perjam]').val(),
                    'company_parent_id'   : $('input[name=company_parent_id_mtc]').val(),
                    'perbaikan_tahun1'    : $('input[name=perbaikan_tahun1]').val(),
                    'perbaikan_tahun2'    : $('input[name=perbaikan_tahun2]').val(),
                    'perbaikan_tahun3'    : $('input[name=perbaikan_tahun3]').val(),

                    'sparepart_tahun1'    : $('input[name=sparepart_tahun1]').val(),
                    'sparepart_tahun2'    : $('input[name=sparepart_tahun2]').val(),
                    'sparepart_tahun3'    : $('input[name=sparepart_tahun3]').val(),
                };

                Swal.fire({
                    title: 'Informasi',
                    icon: 'question',
                    text: 'Apakah anda ingin menyimpan data mesin & hitung biaya?',
                    showDenyButton: true,
                    showCancelButton: true,
                    confirmButtonText: `ya, simpan hasil pengakumulasian penyusutan & MTC & simpan mesin sekarang ✓`,
                    denyButtonText: `belum, masih mengakumulasi biaya penyusutan & jangan simpan mesin & penyusutannya & MTC / Biaya Produksi Lain`,
                    cancelButtonText: `jangan simpan mesin dan mengakumulasi mesin`,
                    }).then((result) => {
                    if (result.isConfirmed) {

                        // if(isEmpty(data) == true) {
                            
                        //     return Swal.fire('#Informasi.', 'anda masih belum memilih mesin yang ditanggani.', 'info')

                        // } 
                        //     else {

                                const pesanStore = Swal.mixin({
                                    toast: true,
                                    position: 'top-end',
                                    showConfirmButton: false,
                                    timer: 10000,
                                    timerProgressBar: true,
                                    didOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal.stopTimer)
                                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                                    }
                                })

                                pesanStore.fire({
                                    icon: 'info',
                                    title: 'Data sedang diproses, tunggu sebentar..'
                                })

                                let stored = {...formData, 'setTo': result, data}

                            $.ajax({
                                type        : 'POST',
                                url         : "{{ route('mesin.storePlaceEv.master') }}",
                                data        : stored, 
                                dataType    : 'json', 
                                encode          : true
                            })
                            .done(function(data) {


                            $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.rumusTotalPenyusutan)));

                                $("#rtrtperbaikanperbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_perbaikan_perbulan)));
                                $("#sparepart_perbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_sparepart_perbulan)));
                                $("#biaya_produksi_lain").val("Rp "+formatCurrency(Math.round(data.biaya_produksi_lain)));
                                $("#total_biaya_perbulan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan)));

                                
                                // $("#gaji_supervisor").val("Rp "+formatCurrency(Math.round(data.spv)));
                                //     $("#gaji_operator").val("Rp "+formatCurrency(Math.round(data.opt)));
                                //     $("#gaji_helper").val("Rp "+formatCurrency(Math.round(data.help)));
                                //     $("#total_perbulan_ps").val("Rp "+formatCurrency(Math.round(data.total_biaya_levels)));
                                //     $("#jumlah_mesin_yangditangani").val("Sebanyak : "+data.mesin+" mesin");

                                if(data.isConfirmed == "true"){

                                    let curr = '{{ route("voyager.mesin.index") }}';
                                setTimeout(function(){ 
                                    window.location.href = curr;
                                }, 4000);

                                        pesanStore.fire({
                                            icon: 'success',
                                            title: 'Data berhasil disimpan..'
                                        })

                                }

                            });
                           
                        // }

                    } if (result.isDenied) {

                    //     if(isEmpty(data) == true) {
                           
                    //        return Swal.fire('#Informasi.', 'anda masih belum memilih mesin yang ditanggani.', 'info')

                    //    }
                    //        else {

                                const PesanPending = Swal.mixin({
                                    toast: true,
                                    position: 'top-end',
                                    showConfirmButton: false,
                                    timer: 10000,
                                    timerProgressBar: true,
                                    didOpen: (toast) => {
                                        toast.addEventListener('mouseenter', Swal.stopTimer)
                                        toast.addEventListener('mouseleave', Swal.resumeTimer)
                                    }
                                })
                                            
                                    PesanPending.fire({
                                    icon: 'info',
                                    title: 'Data sedang diproses, tunggu sebentar..'
                                })
                        

                            let dataPending = {...formData, 'setTo': result, data}

                       $.ajax({
                        type        : 'POST',
                        url         : "{{ route('mesin.storePlaceEv.master') }}", 
                        data        : dataPending, 
                        dataType    : 'json', 
                        encode          : true
                       })
                       .done(function(data) {
                        $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.rumusTotalPenyusutan)));

                        $("#rtrtperbaikanperbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_perbaikan_perbulan)));
                        $("#sparepart_perbulan").val("Rp "+formatCurrency(Math.round(data.rata_rata_sparepart_perbulan)));
                        $("#biaya_produksi_lain").val("Rp "+formatCurrency(Math.round(data.biaya_produksi_lain)));
                        $("#total_biaya_perbulan").val("Rp "+formatCurrency(Math.round(data.total_biaya_perbulan)));

                        // $("#gaji_supervisor").val("Rp "+formatCurrency(Math.round(data.spv)));
                        // $("#gaji_operator").val("Rp "+formatCurrency(Math.round(data.opt)));
                        // $("#gaji_helper").val("Rp "+formatCurrency(Math.round(data.help)));
                        // $("#total_perbulan_ps").val("Rp "+formatCurrency(Math.round(data.total_biaya_levels)));
                        // $("#jumlah_mesin_yangditangani").val("Sebanyak : "+data.mesin+" mesin");

   
                               if(data.isDenied == "true"){

                                    return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi labor, tekan tombol berwarna biru setelah menekan tombol hitung, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                               }
                           });

                    //    }
                       
                    }
                })

            });

        });

        async function GetFullDataMesin_Labor(mesinid
                ) {
                            let datamesinid = {
                                group_mesin_id:mesinid
                            }
                        const apiDataMesin = "{{ route('detail.data.mesin') }}";
                                
                            const settings = {
                                        method: 'POST',
                                        headers: {
                                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                                            'Content-Type': 'application/json;charset=utf-8'
                                            },
                                        body: JSON.stringify(datamesinid)
                                }
                        try {
                                
                                const fetchResponse = await fetch(`${apiDataMesin}`, settings);
                                const data = await fetchResponse.json();
                                return data;
                            } catch (error) {
                            return error
                            }    
                    }

                    $('.save_peny').click(function(event) {

                        var formData = {

                            'nama_sim'              : $('input[name=nama_sim]').val(),
                            'company_parent_id'     : $('input[name=company_parent_id]').val(),
                            'category_bagian'       : $('input[name=category_bagian]').val(),
                            'code_mesin'            : $('input[name=code_mesin_id]').val(),
                            'purchaseorder_value'   : $('input[name=purchaseorder_value]').val(),
                            'umur'                  : $('input[name=umur]').val(),

                        };

                        Swal.fire({
                            title: 'Informasi',
                            text: 'Apakah anda ingin mengakumulasi biaya perhitugan biaya penyusutan sekarang?',
                            showDenyButton: true,
                            showCancelButton: true,
                            confirmButtonText: `ya, akumulasikan & simpan datanya`,
                            cancelButtonText: `jangan diakumulasi & simpan data`,
                            denyButtonText: `belum, masih mengakumulasi biaya & jangan simpan`,
                            }).then((result) => {
                            /* Read more about isConfirmed, isDenied below */
                            if (result.isConfirmed) {

                                const pesanStore = Swal.mixin({
                                            toast: true,
                                            position: 'top-end',
                                            showConfirmButton: false,
                                            timer: 10000,
                                            timerProgressBar: true,
                                            didOpen: (toast) => {
                                                toast.addEventListener('mouseenter', Swal.stopTimer)
                                                toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                        })
                                                
                                        pesanStore.fire({
                                            icon: 'info',
                                            title: 'Data sedang diproses, tunggu sebentar..'
                                        })


                                let store = {...formData, 'setTo': result}
                                        $.ajax({
                                            type        : 'POST',
                                            url         : "{{ route('penyusutans.store.master') }}", 
                                            data        : store, 
                                            dataType    : 'json', 
                                            encode          : true
                                        })
                                        .done(function(data) {
                                            $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.d)));
                                            if(data.isConfirmed == "true"){

                                                let curr = '{{ route("voyager.penyusutan.index") }}';
                                                setTimeout(function(){ 
                                                    window.location.href = curr;
                                                }, 4000);

                                                return Swal.fire('Data diakumulasi ulang.', 'Perhitugan akumulasi biaya penyusutan berhasil diakumulasi & disimpan', 'success')
                                            }

                                        });

                            } else if (result.isDenied) {

                                const PesanPending = Swal.mixin({
                                            toast: true,
                                            position: 'top-end',
                                            showConfirmButton: false,
                                            timer: 10000,
                                            timerProgressBar: true,
                                            didOpen: (toast) => {
                                                toast.addEventListener('mouseenter', Swal.stopTimer)
                                                toast.addEventListener('mouseleave', Swal.resumeTimer)
                                            }
                                        })
                                                
                                        PesanPending.fire({
                                            icon: 'info',
                                            title: 'Data sedang diproses, tunggu sebentar..'
                                        })

                                let dataPending = {...formData, 'setTo': result}

                                        $.ajax({
                                            type        : 'POST',
                                            url         : "{{ route('penyusutans.store.master') }}", 
                                            data        : dataPending, 
                                            dataType    : 'json', 
                                            encode          : true
                                        })
                                        .done(function(data) {
                                            $("#total_perbulan_p").val("Rp "+formatCurrency(Math.round(data.d)));
                                            if(data.isDenied == "true"){

                                                return Swal.fire('#Informasi.', 'jika sudah yakin ingin menyimpan akumulasi biaya penyusutan, tekan tombol hitung penyusutan, kemudian sistem akan mengakumulasi dan sekaligus menyimpan datanya.', 'info')
                                        
                                            }
                                            
                                        $(".removeLater").val('');

                                    }
                                );
                            }
                        })

                        event.preventDefault();
                    });
    </script>
@stop