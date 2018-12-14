var ctx = document.getElementById("graficoGenero1").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Homens", "Mulheres"],
        datasets: [{
                label: 'Número de pessoas',
                data: [3, 5],
                backgroundColor: [
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                ],
                borderWidth: 1
            }]
    },
    options: {
        aspectRatio : 1,
        scales: {
            yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
        },
        title: {
            display: true,
            text: 'Egressos empregados',
            fontSize:20
        }
    }
});
var ctx = document.getElementById("graficoGenero2").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Homens", "Mulheres"],
        datasets: [{
                label: 'Número de pessoas',
                data: [12, 19],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                ],
                borderWidth: 1
            }]
    },
    options: {
        aspectRatio : 1,
        scales: {
            yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
        },
        title: {
            display: true,
            text: 'Egressos desempregados',
            fontSize:20
        }
    }
});
var ctx = document.getElementById("graficoGenero3").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Outros", "Outros"],
        datasets: [{
                label: 'Número de pessoas',
                data: [2, 3],
                backgroundColor: [
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
    },
    options: {
        aspectRatio : 1,
        scales: {
            yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
        },
        title: {
            display: true,
            text: 'Outros',
            fontSize:20
        }
    }
});
