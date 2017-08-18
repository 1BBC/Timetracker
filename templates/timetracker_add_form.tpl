        <div class='box box-theme box-form'>
          <div class='box-header with-border'><h4 class='box-title'>_{FILLING_TIMETRACKER}_</h4></div>
          <div class='box-body'>
                <form name='RANGE_PICKER' id='form_RANGE_PICKER' method='post' class='form form-horizontal'>
                <input type='hidden' name='index' value='$index' />
                <input  type='hidden' name='NAMEADD' value='%ADMIN%'>
                <input  type='hidden' name='add_form' value='1'>

              <div class='form-group'>
                <label class='control-label col-md-3' for='SUPPORT_ID'>_{SUPPORT_TIMETRACK}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control'  required name='SUPPORT'  id='SUPPORT_ID'  />
                </div>
              </div>

              <div class='form-group'>
                <label class='control-label col-md-3' for='SPRINT_ID'>_{SPRINT_TIMETRACK}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='SPRINT'  id='SPRINT_ID'  />
                </div>
              </div>

              <div class='form-group'>
                <label class='control-label col-md-3' for='OSBB_ID'>_{OSBB}_</label>
                <div class='col-md-9'>
                    <input type='text' class='form-control' name='OSBB'  id='OSBB_ID'  />
                </div>
              </div>

              <div class='form-group'>
                <label class='control-label col-md-3 required' for='DATE_ID'>_{DATE}_</label>
                <div class='col-md-9'>
                    %DATEPICKER%
                </div>
              </div>
            </form>

          </div>
          <div class='box-footer text-center'>
              <input type='submit' form='form_RANGE_PICKER' class='btn btn-primary' name='submit' value='_{SUBMIT_BTN_ADD_TIMETRACK}_'>
          </div>
        </div>     