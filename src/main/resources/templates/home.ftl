<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>HBrowser</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->

<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<!--link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"-->



    <link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://getbootstrap.com/2.3.2/assets/css/bootstrap-responsive.css" rel="stylesheet">

<script src="http://jquery.bassistance.de/validate/jquery.validate.js"></script>
<script src="http://jquery.bassistance.de/validate/additional-methods.js"></script>    

    <script src="js/client.js" type="text/javascript"></script>  
    <script src="js/serverutil.js" type="text/javascript"></script>  


    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      .hero-unit {
      padding: 20px;
      margin-bottom: 5px;
      font-size: 16px;
      font-weight: 200;
      }      


      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
<!--Script for dynamic text box-->
<script type="text/javascript">

</script> 


<script>




</script>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">HBrowser</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Welcome <a href="#" class="navbar-link">Guest</a>
            </p>
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#">About</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span2">
          <div class="well sidebar-nav" id="tbl_list">
            <ul class="nav nav-list">
              <li class="nav-header">Tables</li>
            </ul>
            <div id="tblName">
            <ul class="nav nav-list" id="TableList">
            </ul>
            </div>
          </div><!--/.well -->
        </div><!--/span-->


        <div class="span10">
          <div class="hero-unit">

            <!--section unit-->
            <div class="tabbable" id="maintabs"> <!-- Only required for left/right tabs -->
              <ul class="nav nav-tabs">
                <li class="active"><a href="#tab1" data-toggle="tab">Config</a></li>
                <li><a href="#tab2" data-toggle="tab">Scan</a></li>
                <li><a href="#tab3" data-toggle="tab">Create</a></li>
                <li><a href="#tab4" data-toggle="tab">Drop</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="tab1">
                    <div>
                      <div>
                          <div>hbase.zookeeper.quorum : <input type="text" id="zkQuorum" placeholder="localhost"></div>
                          <div>hbase.zookeeper.clientPort : <input type="text" id="zkPort" placeholder="2181" ></div>
                      </div>
                    </div>
                    <button class="btn btn-primary" id="save" >Save</button>
                    <button class="btn" id="clear_config" >Clear</button>
                  </div>                    


                <div class="tab-pane" id="tab2">

                  <!--Query Contents-->
                  <div class="modal-body">
                  <div id="formdata">
                      <!--form action="/home" method="post"-->
                      <div class="controls" style="display: inline-block;">
                          <select id="sc_cf">
                          </select>
                      </div>                      
                      <div style="display: inline-block; vertical-align: top;">
                        <button class="btn btn-primary" id="scan" ><i class="icon-white icon-hand-right"></i>Scan</button>
                      </div>
                      <!--/form-->
                  </div>
                  <!-- Data list -->
                  <div>
                      <table class="table table-striped table-bordered table-condensed table-hover">
                      <thead><tr> <th>Letter</th><th>Phonetic Letter</th></tr></thead>
                      <tr><td>A</td><td>Alpha</td></tr>
                      <tr><td>B</td><td>Bravo</td></tr>
                      <tr><td>C</td><td>Charlie</td></tr>
                      <tr><td>D</td><td>James</td></tr>                      
                      <tr><td>E</td><td>Michle</td></tr>                      
                      </table>
                  </div>


                  </div>
                  <!--Query Contents end-->
                </div>
                <div class="tab-pane" id="tab3">
                  <form id="createTable">
                  <div>Table Name : <input type="text" id="table_name" required></div>
                    <div id="TextBoxesGroup">
                      <div id="TextBoxDiv1">
                          <div id="TextBoxDiv1">Family #1 : <input type="text" id="CF1" required></div>
                      </div>
                    </div>
                    <input type="button" value="Add" id="addButton">
                    <input type="button" value="Remove" id="removeButton">
                    </form>
                    <button class="btn btn-primary" id="create" >Create</button>
                </div> 

                <div class="tab-pane" id="tab4">
                    <div>
                      <div>
                          <div>Table Name : <input type="text" id="dropTableName" placeholder="student"></div>
                      </div>
                    </div>
                    <button class="btn btn-danger" id="drop" >Drop</button>
                  </div>                                         
                </div>
              </div>
            </div>          


    </div>


          </div>
          
          
        </div><!--/span-->
      </div><!--/row-->

      <hr>

      <footer>
        <p>© Hbrowse 2013</p>
      </footer>

    </div>

</body></html>