<!-- Modal -->
<div class="modal" id="modal_satuan" tabindex="-1" data-backdrop="static" role="dialog" aria-hidden="true">
    
    <!-- Modal Dialog  -->
    <div class="modal-dialog" role="document">

        <!-- Form Satuan  -->
        <form  id="form_satuan">

            <!-- Modal Content -->
            <div class="modal-content"> 

                <!-- Modal Header  -->
                <div class="modal-header">
                    <h4 class="modal-title">Form Satuan</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div> 

                <!-- Modal Body  -->
                <div class="modal-body">
                    <!-- Kode Satuan  -->
                    <div class="form-group">
                        <label>Kode Satuan</label>
                        <input type="text" id="kd_satuan" name="kd_satuan" class="form-control" required>
                    </div>
                    <!-- Nama Satuan  -->
                    <div class="form-group">
                        <label>Nama Satuan</label>
                        <input type="text" id="nm_satuan" name="nm_satuan" class="form-control" required>
                    </div>
                </div> 

                <!-- Modal Footer  -->
                <div class="modal-footer">

                    <button type="submit" id="csubmit" name="submit" class="btn btn-primary">
                        <i class="far fa-save"></i> Simpan
                    </button>

                    <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        <i class="fas fa-ban"></i> Batal
                    </button>

                </div>

            </div>

        </form>

    </div>

</div>