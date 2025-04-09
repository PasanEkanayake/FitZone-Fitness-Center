// Initialize Testimonies Swiper
const swiper = new Swiper('.slider-wrapper', {
    loop: true,
    spaceBetween: 25,
  
    pagination: {
      el: '.swiper-pagination',
    },
  
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },

    breakpoints: {
        0: {
            slidesPerView: 1
        },
        768: {
            slidesPerView: 2
        },
        1024: {
            slidesPerView: 3
        },
    }
  });

// Calculate the BMI
function calculateBMI() {
  let weight = document.getElementById("weight").value;
  let height = document.getElementById("height").value;

  if (weight === "" || height === "" || weight <= 0 || height <= 0) {
      alert("Please enter valid weight and height!");
      return;
  }

  height = height / 100; // Convert height to meters
  let bmi = (weight / (height * height)).toFixed(2); // BMI formula

  let condition = "";
  if (bmi < 18.5) {
      condition = "Underweight";
  } else if (bmi >= 18.5 && bmi < 24.9) {
      condition = "Normal Weight";
  } else if (bmi >= 25 && bmi < 29.9) {
      condition = "Overweight";
  } else {
      condition = "Obese";
  }

  // Display results
  document.getElementById("bmi-result").value = bmi;
  document.getElementById("bmi-condition").value = condition;
}

// Clear the BMI input Feilds
function resetBMI() {
    document.getElementById("height").value = "";
    document.getElementById("weight").value = "";
    document.getElementById("bmi-result").value = "";
    document.getElementById("bmi-condition").value = "";
}