document.getElementById('startButton').addEventListener('click', function() {
    document.getElementById('video').style.display = 'block';
    navigator.mediaDevices.getUserMedia({ video: true })
        .then(function(stream) {
            document.getElementById('video').srcObject = stream;
            document.getElementById('cakeSelection').style.display = 'flex';
            document.getElementById('instructions').style.display = 'block'; // Show instructions
            document.getElementById('cake-header').style.display = 'none'; // hide cake header
            document.getElementById('startButton').style.display = 'none'; // hide start button
        })
        .catch(function(error) {
            console.log("Something went wrong!");
        });
});


function selectCake(cake) {


    
    // Display feedback after 2 seconds
    setTimeout(() => {
        const feedbackImage = document.getElementById('feedbackImage');
        document.getElementById('cakeSelection').style.display = 'none';
        document.getElementById('feedback').style.display = 'block';

        // This is where you'd add logic to choose thumbs up or down
        // For now, it randomly selects one
        //feedbackImage.src = Math.random() > 0.5 ? 'thumbs-up.jpg' : 'thumbs-down.jpg';
    }, 2000);
    
    image_data = captureFrameToTensor();
    console.log("image data captured")
    // make_prediction(image_data)


}


function closePopup() {
    document.getElementById('popup').style.display = 'none';
}


function captureFrameToTensor() {
    var video = document.getElementById('video');
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    context.drawImage(video, 0, 0, canvas.width, canvas.height);

    // Directly convert the canvas pixels to a tensor
    var imageData = tf.browser.fromPixels(canvas);

    console.log("frame captured")
    // You might need to preprocess the tensor here depending on your model's needs

    /*
    // Convert the canvas to a data URL
    const imageDataUrl = canvas.toDataURL('image/png');

    // Create a temporary link element and trigger the download
    const downloadLink = document.createElement('a');
    downloadLink.href = imageDataUrl;
    downloadLink.download = 'captured-frame.png';
    document.body.appendChild(downloadLink);
    downloadLink.click();
    document.body.removeChild(downloadLink);
    */
   
    return imageData;
}

function make_prediction(image_data) {
    console.log("placeholder for prediction function")
}
