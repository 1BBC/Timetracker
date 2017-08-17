      <div class="row">
      <div class='col-xs-12 col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4'> 
        <!-- Add task -->
        <div class='box box-default'>
          <div class='box-heading'>Add task</div>
          <div class='box-body'>
            <form class='form-horizontal' method='GET' action='$SELF_URL'>
              <input type='hidden' name='index' value='$index'>
              <div class='form-group'>
                <label for='inputtext3' class='col-sm-2 control-label'>Name</label>
                <div class='col-sm-10'>
                  <input  type='text' class='form-control' id='inputtext3' placeholder='Name' name='nameadd' value='%ADMIN%'>
                </div>
              </div>
              <div class='form-group'>
                <label for='inputtext3' class='col-sm-2 control-label'>Num1</label>
                <div class='col-sm-10'>
                  <input  type='text' class='form-control' id='inputtext4' placeholder='' name='num1add'>
                </div>
              </div>
              <div class='form-group'>
                <label for='inputtext3' class='col-sm-2 control-label'>Num2</label>
                <div class='col-sm-10'>
                  <input  type='text' class='form-control' id='inputtext5' placeholder='' name='num2add'>
                </div>
              </div>
              <div class='form-group'>
                <label for='inputtext3' class='col-sm-2 control-label'>Num3</label>
                <div class='col-sm-10'>
                  <input  type='text' class='form-control' id='inputtext6' placeholder='' name='num3add'>
                </div>
              </div>
              <div class='form-group'>
                <label for='inputtext3' class='col-sm-2 control-label'>Date</label>
                <div class='col-sm-1 control-label'>
                  <input id='date' type='date' name ='date' value='%DATE%'>
                </div>
              </div>
              <div class='form-group'>
                <div class='col-sm-offset-1 col-sm-10'>
                  <button type='submit' class='btn btn-default'>Add</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        </div>
        </div>