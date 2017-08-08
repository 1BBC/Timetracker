      <div class='col-xs-12 col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4'> 
        <!-- Add task -->
        <div class="panel panel-default">
          <div class="panel-heading">Date range</div>
          <div class="panel-body">
            <form class='form-horizontal' method='GET' action='$SELF_URL'>
              <input type='hidden' name='index' value='$index'>
              <div class="form-group">
                <label for="inputtext3" class="col-sm-2 control-label">FROM</label>
                <div class="col-sm-1 control-label">
                  <input type="date" name ="datepick1">
                </div>
              </div>
              <div class="form-group">
                <label for="inputtext3" class="col-sm-2 control-label">TO</label>
                <div class="col-sm-1 control-label">
                  <input type="date" name ="datepick2">
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-1 col-sm-10">
                  <button type="submit" class="btn btn-default">Find</button>
                </div>
              </div>
            </form>
          </div>
        </div>