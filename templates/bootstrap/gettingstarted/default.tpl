 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> Getting Started Guide
        </div>
        <div class="panel-body">
        
    <p>1. <strong>Create account.</strong></p>
      <ul>
        <li>Register <a href="{$smarty.server.SCRIPT_NAME}?page=register">here</a>, or login if you already have account</li>
        <li>Create a <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">worker</a> that will be used by the miner to login</li>
      </ul>
    </li>
    <p>2. <strong>Connect your ASIC or download a miner.</strong></p>
      <ul>
        <li>Refer to your ASIC manual how to set up the pool connection</li>
        <li>Please note that in times of ASIC miners CPU/GPU mining became unprofitable, there for most of the miners are outdated and unsupported</li>
        <li>Some miners explained in the <a href="https://litecoin.info/Mining_software" target="_blank">Litecoin Mining Software Wiki</a></li>
        <li>This version of ccminer was also reported working on Windows: <a href="https://github.com/nicehash/ccminer-nanashi/releases" target="_blank"> Download here</a>.</li>
      </ul>
    </li>
    <p>3. <strong>Configure your miner.</strong></p>
    <ul>
      <p>Please use the correct port depending on your miner</p>
      <p>All kinds of ASIC miners are supported on port 3333</p>
      <p>If your using Linux, Then type the following into the console:</p>
      <li>CGMiner</li>
      <pre>./cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3332"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>BFGMiner</li>
      <pre>./bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3332"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <br />
	  <p> If you want to mine on a <strong> Windows Operating System</strong>, then you'll need to create a batch file to start your miner. </p><p> Simply open notepad and then copy and paste the following:</p>
      <li>CGMiner</li>
      <pre>cgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3332"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>BFGMiner</li>
      <pre>bfgminer {if $GLOBAL.config.algorithm == 'scrypt'}--scrypt {/if}-o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3332"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      <li>MinerD</li>
      <pre>minerd -a {if $GLOBAL.config.algorithm == 'scrypt'}scrypt {/if}-t 6 -s 4 -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3332"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      {if $GLOBAL.config.algorithm == 'scrypt'}
      <li>Cudaminer For NVIDIA Cards</li>
	  <pre>cudaminer -o stratum+tcp://{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:{$SITESTRATUMPORT|default:"3333"} -u <em>Weblogin</em>.<em>WorkerName</em> -p <em>WorkerPassword</em></pre>
      {/if}
	  <br />
	  <p> You then need to change "-u Weblogin.Worker -p Worker password" to reflect your own account. Eg, "-u Steve.StevesWorker -p StevesWorkerPassword" then go to "File > Save as" and save the file as "RunMe.bat" in the same folder containing your miners application files. You are now ready to mine, double click on "RunMe.bat" to start mining. If you want, you can create additional workers with usernames and passwords of your choice <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers">here</a></p>
    </ul>
    <p>4. <strong>Create a {$SITECOINNAME|default:"Litecoin"} address to receive payments.</strong></p>
      <ul>
        <li> Downloading the client &amp; block chain: 	Download the {$SITECOINNAME|default:"Litecoin"} client from <a href="{$SITECOINURL|default:"http://www.litecoin.org"}" target="_blank">here</a>.
          <p>Generate a new address and input it on your account page to receive payments.</p>
        </li>
      </ul>
    </li>
    {if $GLOBAL.config.algorithm == 'scrypt'}
    <p>5. <strong>Advanced CGMiner settings / FAQ</strong></p>
      <ul>
        <li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">Scrypt readme</a></li>
        <li>Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in CGMiner (HW). HW=0 is good, otherwise lower intensity.</li>
        <li>Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://litecoin.info/Mining_Hardware_Comparison" target="_blank">here</a>.</li>
        <li>There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.</li>
        <li>Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.</li>
      </ul>
    </li>
    {/if}
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
