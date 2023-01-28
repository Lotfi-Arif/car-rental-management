<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>RentoCar</title>
    <link th:href="@{/css/menubar.css}" rel="stylesheet" />
    <link th:href="@{/css/sidebar.css}" rel="stylesheet" />
    <link th:href="@{/css/manageVehicle.css}" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
    />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="menu-bar">
      <div class="logo-menubar"><img src="images/logo.png" /></div>
      <div class="navigation">
        <table>
          <tr>
            <td class="nav-items"><a th:href="@{/home}">Home</a></td>
            <td>|</td>
            <td class="nav-items"><a th:href="@{/aboutus}">About Us</a></td>
            <td>|</td>
            <td class="nav-items"><a th:href="@{/booking}">Book A Car</a></td>
          </tr>
        </table>
      </div>
      <div class="profile">
        <div class="nama-user"><span th:text="${session.username}"></span></div>
        <div class="profile-picture">
          <img src="images/profilepicture.png" />
        </div>
        <div class="dropdown">
          <button class="dropdown-button">
            <i class="fa fa-caret-down"></i>
          </button>
          <div class="dropdown-content">
            <a th:href="@{/profile}">Profile</a>
            <a th:href="@{/logout}">Log Out</a>
          </div>
        </div>
      </div>
    </div>
    <div class="content-container">
      <div class="menu-sidebar">
        <!-- tambah lagi kalau ada -->
        <div class="head">Admin Function</div>
        <div class="header">Vehicle</div>
        <div class="nav-items2">
          <a th:href="@{/managevehicle}">Manage Vehicle</a>
        </div>
        <div class="nav-items2">
          <a th:href="@{/vehiclecondition}">Vehicle Condition</a>
        </div>

        <div class="header">Report</div>
        <div class="nav-items2"><a th:href="@{/getreport}">View Report</a></div>

        <div class="header">Others</div>
        <div class="nav-items2">
          <a th:href="@{/viewAllFeedback}">View Feedback</a>
        </div>
      </div>
      <div class="content">
        <div class="title">Vehicle List</div>
        <div>All these vehicles are available for rent.</div>
        <br />

        <div class="edit-button2">
          <form method="post" action="viewEditVehicle">
            <input
              type="submit"
              class="form-button2 fa fa-edit"
              value="&#xf044; Edit"
            />
          </form>
        </div>
        <br />
        <div class="table">
          <table class="my-table w3-table w3-striped w3-bordered">
            <tr>
              <th>Brand</th>
              <th>Model</th>
              <th>Colour</th>
              <th>Engine</th>
              <th>Registration No.</th>
            </tr>
            <tr th:each="vehicle : ${vehicle}">
              <td th:text="${vehicle.brand}"></td>
              <td th:text="${vehicle.model}"></td>
              <td th:text="${vehicle.colour}"></td>
              <td th:text="${vehicle.engine}"></td>
              <td th:text="${vehicle.registrationno}"></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>
