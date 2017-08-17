      <div class="row">
      <div class='col-xs-12 col-sm-6 col-md-4 col-sm-offset-3 col-md-offset-4'> 
        <!-- Add task -->
        <div class="box box-default">
          <div class="box-heading">Date range</div>
          <div class="box-body">
            <form class='form-horizontal' method='GET' action='$SELF_URL'>
              <input type='hidden' name='index' value='$index'>
              <div class="form-group">
                <label class="col-sm-2 control-label">Month</label>
                <div class="col-sm-1 control-label radio-inline">
                  <input type="radio" name ="radioform" id = "radioform1" value='month' %MONTH%>
                  <input type="month" name ="month_form" value='%DATE_MONTH%'>
                </div>
              </div>
              <div class="form-group">
                <label class="col-sm-2 control-label">Week</label>
                <div class="col-sm-1 control-label radio-inline">
                  <input type="radio" name ="radioform" id = "radioform2" value='week' %WEEK%>
                  <input type="week" name ="week_form" value='%DATE_WEEK%'>
                </div>
              </div>
              <div class="form-group">
                <label>Type</label>
                <select name="timetracker_type" class="form-control">
                  <option value="statistics" %CHEKED_STATISTICS% >Statistics</option>
                  <option value="full_calendar" %CHEKED_FULLCALENDAR% >Calendar</option>
                  <option value="notfull_calendar" %CHEKED_NOTFULLCALENDAR% >Calendar without holidays</option>
                </select>
              </div> 
              <div class="form-group">
                <div class="col-sm-offset-1 col-sm-10">
                  <button type="submit" class="btn btn-default">Find</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        </div>
        </div>