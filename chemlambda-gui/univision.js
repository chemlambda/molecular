
// parameters

//   animation speed

//         var timewait= 1800;
//         var timestep= 500;

//   half-node colors

         var colorA= "#009900";
         var colorL= "#ff0000";
         var colorArrow= "#fff"; 

//   half-edges colors

         var colorOutEdge= "#0033cc";
         var colorInEdge= "#ffff00";

//   glue color

         var colorGlueEdge= "#99c2ff";
         var colorGlueNode= "#99c2ff";
//=============================================================================







//=============================================================================
// from Mike Bostock, the Fisher-Yates shuffle

function shuffle(array, ends) {
  var m = array.length, t, i;

  var p = m;
  var ari = [];
  var j, u, k;

  for (j=0; j < m; j++) {
  ari[ari.length] = j + 1;
  }
  // While there remain elements to shuffle
  while (m) {

    // Pick a remaining element
    i = Math.floor(Math.random() * m--);

    // And swap it with the current element.
    t = array[m];
    array[m] = array[i];
    array[i] = t;

    u = ari[m];
    ari[m] = ari[i];
    ari[i] = u;   
  }

  var x =  ends + " " + "permutation = ( ";
  
  for (k=0; k < p; k++) {
  x = x + ari[k] + " ";
  } 
 
  x = x + ")";
  return document.getElementById(ends).innerHTML = x;
  return array;
}

// end copypaste
//=============================================================================






//=============================================================================

function keepNodesOnTop() {
  $(".nodeStrokeClass").each(function( index ) {
                               var gnode = this.parentNode;
                               gnode.parentNode.appendChild(gnode);
                             }
                        );
}


function addNodes() {
  d3.select("svg")
    .remove();
drawGraph();
}

