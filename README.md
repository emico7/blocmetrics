# README

* Ruby version - 2.3.1

* Rails version - 5.0

##Blocmetrics: an analytics service which tracks events on registered websites.

In order to start tracking your website, sign up first for Blocmetrics, then register your website there.

After you have registered your site at Blocmetrics, it's time to add a JavaScript snippet to your site. please follow the steps below to start tracking the activities.

1 Open your `application.js` file, and add the following code:

```
var blocmetrics = {};
  blocmetrics.report = function(eventName){

    var event = {event: { name: eventName }};
    var request = new XMLHttpRequest();
    request.open("POST", "http://localhost:3000/api/events", true);
    request.setRequestHeader('Content-Type', 'application/json');
    request.send(JSON.stringify(event));
  }
```

2 Add the following code inside the pages which you desire to keep track of. Place this code on the bottom. This example has the event name "About Page View". Please feel free to choose a name that best describes the page you are placing this code:

```
<script type="text/javascript">
     $(document).on("ready page:load", function () {
        blocmetrics.report("About Page View");
      })
</script>
```

That's it. Now you can go back to Blocmetrics and see the event counts change as your site gets viewed.
