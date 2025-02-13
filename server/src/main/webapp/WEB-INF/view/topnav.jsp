<nav class="navbar navbar-expand-lg navbar-light bg-light" style="border-bottom: 1px solid black">
  <a class=" navbar-brand" href="#">TCC</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" data-toggle="collapse" href="#body-about" aria-expanded="true" aria-controls="body-about"
          onclick="toggleAbout()">
          About<span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Credits <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#">Statistics</a>
      </li>
      <li class="nav-item active dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="fliterDropdown" role="button"
          data-toggle="dropdown">Filters</a>
        <div class="dropdown-menu" aria-labelledby="fliterDropdown">
          <a class="dropdown-item" href="#" onclick="addFilter(FilterClasses.Accident)">Accidents</a>
          <a class="dropdown-item" href="#" onclick="addFilter(FilterClasses.Time)">Time</a>
          <a class="dropdown-item" href="#" onclick="addFilter(FilterClasses.Location)">Location</a>
          <a class="dropdown-item" href="#" onclick="addFilter(FilterClasses.Climate)">Climate</a>
        </div>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#pickFirstLocationModal">Suggest a path</a>
      </li>
      <li class="nav-item inactive">
        <div class="nav-link matching-accidents-tooltip" id="matching-accidents-tooltip">
          <span style="display: inline-block;" id="match-quantity">Looking for</span> Matching accidents
        </div>
      </li>
    </ul>

    <div class="navbar-nav">
      <div class="nav-item active nav-switches">
        <div class="form-inline">
          <div class="custom-control custom-switch my-lg-2">
            <input type="checkbox" class="custom-control-input" id="showHideSwitch"
              onchange="updateShowOrHideAccidents()">
            <label id="showHideText" class="custom-control-label" for="showHideSwitch">Hide accidents</label>
          </div>
        </div>
      </div>

      <!-- Show/Hide Predictions -->
      <div class="nav-item active nav-switches">
        <div class="form-inline">
          <div class="custom-control custom-switch my-lg-2">
            <input type="checkbox" class="custom-control-input" id="showHideRiskSwitch"
              onchange="updateShowOrHideRiskHeatmap()">
            <label id="showHideRiskText" class="custom-control-label" for="showHideRiskSwitch">Risk Heatmap</label>
          </div>
        </div>
      </div>
      <li class="nav-item inactive">
        <span class="nav-link">Select predictor: </span>
      </li>
      <div class="navbar-nav">
        <div class="nav-item active">
          <select class="form-control form-select form-select-sm" id="predictor-for-risk">
            <option value="dummy">Loading</option>
          </select>
        </div>
      </div>
    </div>
  </div>
</nav>