Feature: Get current date helper
Scenario: Get date timestamp
   * def getCurrentDateTimestamp =
  """
  function() {
    var SimpleDateFormat = Java.type('java.text.SimpleDateFormat');
    var tmz = Java.type('java.util.TimeZone');
    var sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
        sdf.setTimeZone(tmz.getTimeZone("GMT+11:00"));
    var date = new java.util.Date();
    return sdf.format(date);
  } 
  """

  * def currentDateTime = getCurrentDateTimestamp()
  * print currentDateTime