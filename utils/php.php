<?php 

echo "<h1>PHP Info</h1><hr>";
echo "<h2>PHP extensions loaded:</h2>";
echo '<div style="font-family: monospace">';
echo implode(', ', get_loaded_extensions(false));
echo '</div>';

phpinfo();