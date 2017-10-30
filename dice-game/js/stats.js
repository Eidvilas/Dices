var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: [],
        datasets: [{
            label: 'Results',
            data: [],
            backgroundColor: [],
            borderColor: [],
            borderWidth: 1
        }],
    }
});



$.getJSON("game.php",
 { my : ""},
  function(result){
    //array=result;
    console.log(result);

    // foreach result row
    $.each(result.result, function(index, val) {
        myChart.data.labels.push(val.date); //label
        myChart.data.datasets[0].data.push(val.result);
    });
        myChart.update();
});    

