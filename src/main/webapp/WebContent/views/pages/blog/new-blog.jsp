<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
      crossorigin="anonymous"
    />
    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="./../../plugins/fontawesome-free-5.15.1/css/all.min.css"
    />
    <link rel="stylesheet" href="./QEditor.css" />
    <style>
      .qeditor-content img {
        width: 300px;
      }
      .hide {
        display: none;
        visibility: hidden;
      }
      #button-gr {
        margin-top: 10px;
      }
      .aa {
        margin-top: 10px;
      }
      .du-lieu {
        text-align: center;
        box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
        max-width: 250px;
        margin: 0 auto;
      }
      .col-3 {
        margin-top: 10px;
      }
      #demo-ck {
        margin: 0 auto;
      }
      #DL img {
        width: 300px;
      }
    </style>
  </head>
  <body>
    <div id="controller">
      <input type="hidden" id="content" value="" />
      <div class="row">
        <div class="col-12">
          <div style="max-width: 800px" name="DSC" id="demo-ck"></div>
        </div>
        <div class="col-12 aa">
          <div id="dulieu" class="du-lieu"></div>
        </div>
      </div>
      <div class="col-12 bb">
        <div id="button-gr" class="button-group">
          <button
            id="get-data"
            onclick="getDL()"
            class="btn btn-outline-primary"
          >
            Get Data
          </button>
          <button
            id="get-data"
            onclick="window.location.href='all-blog.html'"
            class="btn btn-outline-primary"
          >
            a Data
          </button>
          <button id="do-data" onclick="doDL()" class="btn btn-outline-primary">
            Đổ dữ liệu
          </button>
        </div>
      </div>
    </div>
  </body>
  <script src="./QEditor.js"></script>
  <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
  <script>
    var qeditorInstance;
    QEditor.init("demo-ck", {}).then(function (instance) {
      qeditorInstance = instance;
    });
    function getDL() {
      var getData = qeditorInstance.getContent().dataHtml;
      document.getElementById("content").value = getData;
      var hi = document.getElementById("content").value;
      // Store
      localStorage.setItem("value", hi);
    }
    function setDl() {
      document.getElementById("qeditor-toolbar").classList.add("hide");
      var getData = qeditorInstance.getContent().dataHtml;
      var setData = qeditorInstance.setContent({ dataHtml: getData });
      // Store
      localStorage.setItem("value", hi);
    }
    function doDL() {
      var dl = document.getElementById("content").value;
      const tong = document.getElementById("dulieu");
      tong.innerHTML = dl;
      // Store
      localStorage.setItem("value", hi);
    }

    // // Check browser support
    // if (typeof(Storage) !== "undefined") {
    //   // Retrieve
    //   document.getElementById("result").innerHTML = localStorage.getItem("lastname");
    // } else {
    //   document.getElementById("result").innerHTML = "Sorry, your browser does not support Web Storage...";
    // }
  </script>
</html>
