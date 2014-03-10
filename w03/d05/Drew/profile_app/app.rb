require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get('/') {"<!doctype html>

<html>
  <head>
    <title>Personal Profile</title>
    <meta charset='utf-8' />
    <link href='normalize.css' rel='stylesheet' type='text/css' />
  </head>

  <body>

    <header>Home of the Whopper</header>

    <div id='basic-info' class='personal-info'>
      <img src='https://www.gravatar.com/avatar/8e39842a1072c8f67109a6ef86110581?s=300' />
      
      <header>PJ Hughes
      <h1>September 1, 1980,</h1>
      <h2>Hometown: Chagrin Falls, OH</h2>

      </header>
        Pets: 
        <ul>
          <li>Rascal,</li>
          <li>Frankie,</li>
          <li>and Cheep-cheep</li>
        </ul>
      </p>

      Color: straight green homie</p>
    </div>
    
    <div id='statement' class='personal-info'>
      <p>My personal jihad is writing semantic HTML with no styling.</p>
    </div>

    <nav>
      <a href=''>Info Page: Name</a><br/>
      <a href=''>Info Page: Hometown</a><br/>
      <a href=''>Info Page: Pets</a><br/>
      <a href=''>Info Page: Color</a><br/>
    </nav>
    <footer>made with love in NYC by PJ Hughes.</footer>
  </body>
</html>"} #if else statement- if params is nill, put word, else put name

get()