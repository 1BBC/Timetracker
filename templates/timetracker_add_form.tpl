        <div class='box box-theme box-form'>
          <div class='box-header with-border'><h4 class='box-title'>_{FILLING_TIMETRACKER}_</h4></div>
          <div class='box-body'>
                <form name='RANGE_PICKER' id='form_RANGE_PICKER' method='GET' class='form form-horizontal'>
                <input type='hidden' name='index' value='$index' />
                <input  type='hidden' name='NAME' value='%ADMIN%'>
                <input  type='hidden' name='add_form' value='1'>

                %FORM_GROUP%

              <div class='form-group'>
                <label class='control-label col-md-3 required' for='DATE_ID'>_{DATE}_</label>
                <div class='col-md-9'>
                    %DATEPICKER%
                </div>
              </div>
            </form>

          </div>
          <div class='box-footer text-center'>
              <input type='submit' form='form_RANGE_PICKER' class='btn btn-primary' name='%ACTION%' value='%BTN%'>
          </div>
        </div>     