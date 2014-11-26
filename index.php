<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
  <?php
    $title = 'DeLorean Ipsum';
    $description = 'Well, because George, nice girls get angry when guys take advantage of them. Doc?';
    if (isset($_POST['username']) && isset($_POST['password'])) {
      if ($_POST['username'] == 'marty' && $_POST['password'] == 'gallina') {
        $_SESSION['logged_in'] = true;
        $wellcome_message = 'Hello Marty!';
      } else {
        $error_message = 'The User specified does not exist. Go back and try again.';
      }
    }
  ?>

  <head>
    <?php require("_head.php"); ?>
  </head>
  <body>
    <?php require("_header.php"); ?>

    <div class="container bs-docs-container">

      <div class="row">
        <div class="col-md-9" role="main">
          <?php
            if (isset($wellcome_message)) {
              echo '<div class="alert alert-success" role="alert">' . $wellcome_message . ' Wellcome to the demo page!</div>';
            };

            if (isset($error_message)) {
              echo '<div class="alert alert-danger" role="alert">' . $error_message . '</div>';
            };
          ?>

          <img width="100%" alt="DeLorean" src="assets/img/delorean.png">

          <!-- History ================================================== -->
          <div class="bs-docs-section">
            <h1 id="history" class="page-header">McFly?</h1>

            <p class="lead">Chuck, Chuck, its' your cousin. Your cousin Marvin Berry, you know that new sound you're lookin for, well listen to this. Uh, well, I haven't finished those up yet, but you know I figured since they weren't due till- You bet. What was it, George, bird watching? You got a permit for that?</p>

            <div id="demo-output">
              <p>I'll be at my grandma's. Here, let me give you the number. Bye. 1955? You're my ma- you're my ma.</p>
              <p>Right, gimme a Pepsi free. Jennifer, oh are you a sight for sore eyes. Let me look at you. That's a big bruise you have there. I'm sure that in 1985, plutonium is available at every corner drug store, but in 1955, it's a little hard to come by. Marty, I'm sorry, but I'm afraid you're stuck here. Oh, hi , Marty. I didn't hear you come in. Fascinating device, this video unit.</p>
              <p>Who do you think, the Libyans. Hey, hey, I've seen this one, I've seen this one. This is a classic, this is where Ralph dresses up as the man from space. Right, gimme a Pepsi free. Re-elect Mayor Goldie Wilson. Progress is his middle name. Uh, you mean nobody's asked you?</p>
              <p>So tell me, <a href="/">future boy</a>, who's president of the United States in 1985? What, what is it hot? Damn, where is that kid. Damn. Damn damn. You're late, do you have no concept of time? Oh. Why thank you, Marty. George. Good morning, sleepyhead, Good morning, Dave, Lynda</p>
              <p>Don't tell me. Uh, you want me to buy a subscription to the Saturday Evening Post? Damn. I'm late for school. This is more serious than I thought. Apparently your mother is amorously infatuated with you instead of your father. Aw yeah, everything is great. Now which one was it, Greg or Craig?</p>
              <p>C'mon man, let's do something that really cooks. Hey beat it, spook, this don't concern you. I do understand. If I know too much about my own future I could endanger my own existence, just as you endangered yours. Perfect, just perfect. Yeah.</p>
            </div>
          </div>

          <!-- Team ================================================== -->
          <div class="bs-docs-section">
            <h1 id="team" class="page-header">Doctor Emmett Brown</h1>

            <p class="lead">No. No. We're gonna take a little break but we'll be back in a while so, don't nobody go no where.</p>

            <p>Yeah, you got my homework finished, McFly? We do now. You cost three-hundred buck damage to my car, you son-of-a-bitch. And I'm gonna take it out of your ass. Hold him. Oh, thank you, thank you. Okay now, we run some industrial strength electrical cable from the top of the clocktower down to spreading it over the street between two lamp posts. Meanwhile, we out-fitted the vehicle with this big pole and hook which runs directly into the flux-capacitor. At the calculated moment, you start off from down the street driving toward the cable execrating to eighty-eight miles per hour. According to the flyer, at !0:04 pm lightning will strike the clocktower sending one point twenty-one gigawatts into the flux-capacitor, sending you back to 1985. Alright now, watch this. You wind up the car and release it, I'll simulate the lightening. Ready, set, release. Huhh. Mr. McFly, Mr. McFly, this just arrived, oh hi Marty. I think it's your new book.</p>
            <p>Well maybe you are and you just don't know it yet. It's a board with wheels. Just turn around, McFly, and walk away. Are you deaf, <a href="/">McFly? Close the door and beat it</a>. <strong>Lorraine</strong>, have you ever, uh, been in a situation where you know you had to act a certain way but when you got there, you didn't know if you could go through with it? Without any sugar.</p>
          </div>

          <!-- Brand ================================================== -->
          <div class="bs-docs-section">
            <h1 id="brand" class="page-header">Biff</h1>

            <p class="lead">No, it was The Enchantment Under The Sea Dance. Our first date...</p>

            <p>Alright, c'mon, I think we're safe. Time machine, I haven't invented any time machine. I don't worry. this is all wrong. I don't know what it is but when I kiss you, it's like kissing my brother. I guess that doesn't make any sense, does it? Oh, oh a rematch, why, were you cheating? Keys?</p>

            <p>oh yeah, all you gotta do is go over there and ask her. Don't tell me anything. Watch it, Goldie. I followed you. It's about the future, isn't it?</p>

            <p>That was the day I invented time travel. I remember it vividly. I was standing on the edge of my toilet hanging a clock, the porces was wet, I slipped, hit my head on the edge of the sink. And when I came to I had a revelation, a picture, a picture in my head, a picture of this. This is what makes time travel possible. The flux capacitor. Lorraine. George. George. Alright, good-bye Einy. Oh, watch that re-entry, it's a little bumpy. Hey wait, wait a minute, who are you? Stella, another one of these damn kids jumped in front of my car. Come on out here, help me take him in the house.</p>

            <p>Why am I always the last one to know about these things. Safe now, everything's let lined. Don't you lose those tapes now, we'll need a record. Wup, wup, I almost forgot my luggage. Who knows if they've got cotton underwear in the future. I'm allergic to all synthetics. I need fuel. Go ahead, quick, get in the car. Remember, fellas, the future is in your hands. If you believe in progress, re-elect Mayor Red Thomas, progress is his middle name. Mayor Red Thomas's progress platform means more jobs, better education, bigger civic improvements, and lower taxes. On election day, cast your vote for a proven leader, re-elect Mayor Red Thomas... Right, I got it.</p>

            <p>Doc, Doc. Oh, no. You're alive. Bullet proof vest, how did you know, I never got a chance to tell you. About all that talk about screwing up future events, the space time continuum. Don't tell me. Uh, you want me to buy a subscription to the Saturday Evening Post? Well that's your name, isn't it? Calvin Klein. it's written all over your underwear. Oh, I guess they call you Cal, huh? Our first television set, Dad just picked it up today. Do you have a television? Because, you might regret it later in life.</p>

            <p>Doc? Am I to understand you're still hanging around with Doctor Emmett Brown, McFly? Tardy slip for you, Miss Parker. And one for you McFly I believe that makes four in a row. Now let me give you a nickle's worth of advice, young man. This so called Doctor Brown is dangerous, he's a real nuttcase. You hang around with him you're gonna end up in big trouble. Look, you gotta listen to me. Oh, what I meant to day was- Good, you could start by sweeping the floor. I have to tell you about the future.</p>
          </div>
        </div>

        <div class="col-md-3">
          <div class="bs-docs-sidebar hidden-print hidden-xs hidden-sm" role="complementary">
            <ul class="nav bs-docs-sidenav">
              <li>
                <a href="#history">McFly?</a>
              </li>
              <li>
                <a href="#team">Doctor Emmett Brown</a>
              </li>
              <li>
                <a href="#brand">Biff</a>
              </li>
            </ul>
            <a class="back-to-top" href="#top">
              Back to top
            </a>
          </div>
        </div>

      </div>
    </div>

    <?php include('_footer.php') ?>
  </body>
</html>
