-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2025 at 05:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitzone-fitness-center`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_id` int(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`post_id`, `title`, `content`, `category`, `author`, `image`, `created_at`) VALUES
(1, 'Inspiring Fitness Transformations: How Consistency Leads to Success', '<p>At <strong>FitZone Fitness Center</strong>, we believe that every fitness journey is unique. Transformationsâ€”whether physical, mental, or emotionalâ€”are proof that with dedication, hard work, and the right support, anything is possible. From building strength to losing weight, getting healthier to achieving peak performance, transformation is more than just changing how you look. It\'s about changing how you feel and improving your overall quality of life.</p>\r\n\r\n<h3>ðŸ’ª What Is a Fitness Transformation?</h3>\r\n<p>A fitness transformation is not just about losing weight or gaining muscle; it encompasses all the positive changes that happen when you commit to a healthy lifestyle. It can include:</p>\r\n<ul>\r\n  <li><strong>Physical Changes:</strong> Losing fat, building muscle, improving cardiovascular health, or achieving a specific fitness goal (like running a marathon or mastering a yoga pose).</li>\r\n  <li><strong>Mental & Emotional Growth:</strong> Building confidence, improving mental resilience, and developing a more positive outlook on life.</li>\r\n  <li><strong>Better Lifestyle:</strong> Developing healthier eating habits, improving sleep, and maintaining consistent exercise routines.</li>\r\n</ul>\r\n\r\n<h3>ðŸ‹ï¸â€â™‚ï¸ Real-Life Transformations: Stories of Success</h3>\r\n<p>Here are just a few examples of inspiring transformations from our members:</p>\r\n\r\n<ul>\r\n  <li><strong>Annaâ€™s Weight Loss Journey:</strong> Anna lost 50 pounds over the course of 6 months with consistent workouts, healthier eating habits, and a support system at FitZone. Today, sheâ€™s not just lighterâ€”sheâ€™s stronger, happier, and more energetic than ever.</li>\r\n  <li><strong>Johnâ€™s Strength Transformation:</strong> John started with very limited strength due to a shoulder injury. Through consistent weight training and rehab exercises, heâ€™s regained mobility, strength, and confidence. He now regularly lifts heavier weights than he thought possible!</li>\r\n  <li><strong>Sophiaâ€™s Yoga Journey:</strong> Sophia started her yoga practice with little flexibility and a lot of mental stress. Through dedicated practice, she has not only gained flexibility but has also developed a stronger mind-body connection, reducing stress and increasing mindfulness.</li>\r\n</ul>\r\n\r\n<h3>ðŸŒŸ Steps to Achieve Your Own Transformation</h3>\r\n<p>If you\'re ready to start your transformation journey, here are a few key steps that will guide you:</p>\r\n<ul>\r\n  <li><strong>Set Clear, Achievable Goals:</strong> Break down your larger transformation goal into smaller, realistic milestones. This could be achieving a specific weight, hitting a new personal best, or learning a new skill like a pull-up or plank.</li>\r\n  <li><strong>Commit to Consistency:</strong> Consistency is the secret to success. Set a schedule that works for you and stick to it. Make small, daily decisions that bring you closer to your goal, whether itâ€™s completing a workout or choosing healthy meals.</li>\r\n  <li><strong>Focus on Nutrition:</strong> Transformations are not just about exercising. Healthy eating plays a major role. Fuel your body with nutritious foods, and remember that it\'s okay to treat yourself occasionallyâ€”balance is key!</li>\r\n  <li><strong>Track Your Progress:</strong> Keep a journal or take progress photos to see how far you\'ve come. Tracking your workouts, nutrition, and feelings can help you stay motivated and make adjustments if needed.</li>\r\n  <li><strong>Seek Support and Guidance:</strong> Whether it\'s a fitness coach, a workout buddy, or an online community, having support makes your journey easier and more enjoyable. At FitZone, our trainers are always ready to guide you toward your goals.</li>\r\n</ul>\r\n\r\n<h3>ðŸ’¡ Overcoming Obstacles Along the Way</h3>\r\n<p>No transformation is easy, and you will face obstacles. Whether it\'s a plateau in progress, an injury, or lack of motivation, it\'s important to stay positive and keep going. Here are a few tips for overcoming common challenges:</p>\r\n<ul>\r\n  <li><strong>Stay Patient:</strong> Transformations take time. Be patient with yourself and trust the process.</li>\r\n  <li><strong>Celebrate Small Wins:</strong> Every step forward is progress. Celebrate your victories, no matter how small, and use them as fuel to keep going.</li>\r\n  <li><strong>Adapt to Setbacks:</strong> If you face an injury or other setbacks, adapt your plan accordingly. Work with a trainer to adjust your routine and avoid further injury.</li>\r\n  <li><strong>Find Motivation in Others:</strong> Find inspiration from other people\'s journeys, whether through social media or community support. Motivation is contagious!</li>\r\n</ul>\r\n\r\n<h3>ðŸ† Keep Pushing: Your Transformation Is Within Reach!</h3>\r\n<p>At <strong>FitZone Fitness Center</strong>, we\'re committed to supporting you every step of the way. We believe in your ability to transform and weâ€™re here to help you reach your fitness goals, no matter where youâ€™re starting from. Itâ€™s all about making that first stepâ€”and then the nextâ€”and the next.</p>\r\n\r\n<p><strong>Are you ready to transform?</strong> Come visit us at FitZone, and letâ€™s start your fitness transformation today!</p>\r\n\r\n<p><strong>#TransformationJourney | #FitZoneSuccess | #FitnessGoals</strong></p>', 'Inspiration', 'Chamath Randika', 'blog-inspiration-1.jpg', '2025-04-09 01:06:45'),
(2, 'Injury Prevention: Protecting Your Body While Staying Active', '<p>At <strong>FitZone Fitness Center</strong>, we prioritize the safety and well-being of our members. While pushing yourself to achieve your fitness goals is important, preventing injuries is equally essential to ensure long-term progress and health. Whether youâ€™re a seasoned athlete or just starting your fitness journey, taking steps to prevent injury will help you stay active, avoid setbacks, and keep moving toward your goals.</p>\r\n\r\n<h3>ðŸ’ª Why Injury Prevention Matters</h3>\r\n<p>Injuries can sideline your progress, cause frustration, and sometimes even lead to long-term physical issues. A single injury can affect your mobility, your ability to work out, and your overall well-being. By incorporating injury prevention strategies into your routine, you minimize the risk of getting hurt and maximize the benefits of your fitness efforts. Plus, staying injury-free means more consistency in your workouts and less downtime for recovery.</p>\r\n\r\n<h3>ðŸ‹ï¸â€â™‚ï¸ Key Strategies for Injury Prevention</h3>\r\n<p>Here are several effective strategies to help you stay injury-free while working out:</p>\r\n\r\n<ul>\r\n  <li><strong>Warm Up Properly:</strong> Warming up prepares your body for the physical demands of exercise by increasing blood flow to your muscles, improving flexibility, and enhancing range of motion. A good warm-up should include dynamic stretches and movements specific to the workout youâ€™re about to do.</li>\r\n  <li><strong>Cool Down and Stretch:</strong> After your workout, donâ€™t skip the cool-down. Static stretches help relax muscles, improve flexibility, and reduce muscle soreness. Make sure to focus on areas that were heavily involved during the workout.</li>\r\n  <li><strong>Use Proper Form:</strong> Whether youâ€™re lifting weights or doing bodyweight exercises, maintaining proper form is essential for injury prevention. Bad form places unnecessary strain on joints, ligaments, and muscles, leading to overuse injuries or acute injuries. If youâ€™re unsure about your form, ask a trainer for guidance.</li>\r\n  <li><strong>Progress Gradually:</strong> Avoid the temptation to push yourself too hard too quickly. Gradually increase the intensity, duration, and volume of your workouts to allow your body to adapt. Rapid progression can lead to overtraining and increase the risk of injury.</li>\r\n  <li><strong>Rest and Recover:</strong> Your body needs time to recover after intense workouts. Proper rest helps muscles repair and rebuild, and allows your joints to recover. Incorporate rest days into your routine and avoid exercising the same muscle groups two days in a row.</li>\r\n  <li><strong>Wear Proper Footwear:</strong> Wearing the right shoes for your activity is crucial in preventing foot, ankle, and knee injuries. Choose shoes that offer support, cushioning, and stability, especially for high-impact activities like running or jumping.</li>\r\n  <li><strong>Stay Hydrated:</strong> Dehydration can lead to muscle cramps and fatigue, increasing the risk of injury. Make sure to drink plenty of water before, during, and after your workout to stay hydrated and perform at your best.</li>\r\n  <li><strong>Cross-Train:</strong> Donâ€™t rely on just one form of exercise. Cross-training helps to build strength and endurance in different muscle groups, which reduces the risk of overuse injuries and keeps your workouts fresh and exciting.</li>\r\n</ul>\r\n\r\n<h3>ðŸ”§ Common Types of Fitness Injuries and How to Avoid Them</h3>\r\n<p>Here are some common injuries and ways to prevent them:</p>\r\n\r\n<ul>\r\n  <li><strong>Sprains and Strains:</strong> These are common injuries in which a ligament (sprain) or muscle/tendon (strain) is overstretched or torn. To prevent these, always warm up before activity, use proper form, and avoid overexerting yourself.</li>\r\n  <li><strong>Runnerâ€™s Knee:</strong> Often caused by repetitive motion, this injury can be prevented by focusing on strengthening the muscles around the knee, wearing proper shoes, and avoiding running on hard surfaces.</li>\r\n  <li><strong>Shin Splints:</strong> Shin splints are common among runners and can result from overtraining or improper footwear. Prevent this by increasing running volume gradually, stretching the calves, and strengthening the lower leg muscles.</li>\r\n  <li><strong>Lower Back Pain:</strong> Often caused by improper posture or lifting techniques, back pain can be avoided by maintaining proper form during exercises, strengthening the core muscles, and avoiding heavy lifting without proper technique.</li>\r\n  <li><strong>Achilles Tendonitis:</strong> This condition is common in athletes who run or jump often. Prevent it by warming up properly, gradually increasing intensity, and stretching the calf muscles regularly.</li>\r\n</ul>\r\n\r\n<h3>ðŸ’¡ Tips for Preventing Overtraining Injuries</h3>\r\n<p>Overtraining is one of the main causes of injury, and it often occurs when you push yourself too hard without adequate recovery. Here are a few tips to prevent overtraining:</p>\r\n<ul>\r\n  <li><strong>Listen to Your Body:</strong> Pay attention to signs of fatigue or discomfort. If you feel pain, itâ€™s your body telling you to slow down and rest.</li>\r\n  <li><strong>Take Rest Days:</strong> Rest is just as important as exercise. Schedule at least one or two rest days each week to give your body time to recover.</li>\r\n  <li><strong>Mix Up Your Routine:</strong> Doing the same workout every day can lead to overuse injuries. Incorporate variety into your fitness plan by alternating between cardio, strength, and flexibility workouts.</li>\r\n  <li><strong>Get Enough Sleep:</strong> Sleep is crucial for muscle recovery. Aim for 7-9 hours of quality sleep each night to allow your body to repair itself and reduce the risk of injury.</li>\r\n</ul>\r\n\r\n<h3>ðŸš€ Stay Injury-Free at FitZone Fitness Center</h3>\r\n<p>At <strong>FitZone Fitness Center</strong>, weâ€™re committed to helping you stay safe while achieving your fitness goals. Our certified trainers are always available to assist with form, provide guidance, and ensure you\'re progressing at a safe pace. We believe that injury prevention is key to a long-lasting fitness journey.</p>\r\n\r\n<p><strong>Remember: Safety first! Prioritize injury prevention and keep your fitness journey on track.</strong><br>\r\n#InjuryPrevention | #FitZoneSafety | #FitnessJourney</p>', 'Advice', 'Pasan Ekanayake', 'blog-advice-1.jpg', '2025-04-09 01:07:53'),
(3, 'Muscle Gain Nutrition: Fueling Your Body for Maximum Growth', '<p>When it comes to building muscle, what you eat is just as important as your workouts. Proper nutrition plays a vital role in helping your body recover, grow, and perform at its best. Whether youâ€™re aiming to gain muscle mass, increase strength, or enhance overall performance, understanding the basics of muscle gain nutrition will help you achieve your goals more efficiently and effectively.</p>\r\n\r\n<h3>ðŸ½ï¸ The Role of Nutrition in Muscle Growth</h3>\r\n<p>Nutrition is essential for muscle gain because it provides the energy and building blocks your body needs to repair and grow muscle tissue after exercise. After intense workouts, your muscles experience micro-tears that require adequate recovery and nutrients to repair. Without the proper nutrients, your muscles wonâ€™t grow and may even begin to break down.</p>\r\n\r\n<h3>ðŸ’ª The Key Nutrients for Muscle Gain</h3>\r\n<p>To build muscle, you need to focus on three main macronutrients: protein, carbohydrates, and fats. Letâ€™s break down how each of these nutrients contributes to muscle growth:</p>\r\n\r\n<ul>\r\n  <li><strong>Protein:</strong> Protein is the cornerstone of muscle repair and growth. After a workout, your muscles need protein to rebuild and grow stronger. Aim for at least 1.6â€“2.2 grams of protein per kilogram of body weight each day. Excellent sources of protein include chicken, turkey, lean beef, eggs, tofu, legumes, and protein powders.</li>\r\n  <li><strong>Carbohydrates:</strong> Carbs are your bodyâ€™s primary source of energy. They fuel your workouts and replenish glycogen stores in your muscles after training. Without enough carbs, you may feel fatigued, and your performance may suffer. Include complex carbohydrates like brown rice, oats, whole wheat pasta, and sweet potatoes in your diet to maintain energy levels.</li>\r\n  <li><strong>Healthy Fats:</strong> Healthy fats support hormone production, including testosterone, which is crucial for muscle growth. They also help your body absorb fat-soluble vitamins. Sources of healthy fats include avocados, olive oil, nuts, seeds, and fatty fish like salmon.</li>\r\n</ul>\r\n\r\n<h3>ðŸ³ The Importance of Meal Timing</h3>\r\n<p>Meal timing is also an important factor in optimizing muscle gain. You donâ€™t have to eat every 2-3 hours, but paying attention to when you eat can make a difference in muscle recovery and growth. Hereâ€™s how meal timing can help:</p>\r\n\r\n<ul>\r\n  <li><strong>Pre-Workout:</strong> Eating a balanced meal containing protein and carbs 1â€“2 hours before your workout will provide your body with the energy it needs to perform at its best. A combination of lean protein and complex carbs will fuel your muscles and prevent muscle breakdown during exercise.</li>\r\n  <li><strong>Post-Workout:</strong> After a workout, your muscles are hungry for nutrients. Aim to eat a meal or snack that contains both protein and carbohydrates within 30-60 minutes after training. Protein helps repair and build muscles, while carbs replenish glycogen stores.</li>\r\n  <li><strong>Evening Nutrition:</strong> Eating a high-protein dinner and having a small protein snack before bed can support muscle repair during sleep. Casein protein, found in dairy products, is slow-digesting, making it an excellent option for nighttime recovery.</li>\r\n</ul>\r\n\r\n<h3>ðŸ¥© Sample Muscle Gain Meal Plan</h3>\r\n<p>Hereâ€™s an example of a dayâ€™s worth of meals to support muscle growth:</p>\r\n\r\n<h4>Breakfast:</h4>\r\n<ul>\r\n  <li>Oats with protein powder, almond butter, and chia seeds</li>\r\n  <li>Scrambled eggs with spinach and whole-grain toast</li>\r\n</ul>\r\n\r\n<h4>Mid-Morning Snack:</h4>\r\n<ul>\r\n  <li>Greek yogurt with mixed berries and honey</li>\r\n</ul>\r\n\r\n<h4>Lunch:</h4>\r\n<ul>\r\n  <li>Grilled chicken breast with quinoa, broccoli, and avocado</li>\r\n</ul>\r\n\r\n<h4>Pre-Workout Snack:</h4>\r\n<ul>\r\n  <li>Banana with a scoop of protein powder and almond butter</li>\r\n</ul>\r\n\r\n<h4>Post-Workout Meal:</h4>\r\n<ul>\r\n  <li>Protein shake with banana and oats</li>\r\n  <li>Grilled salmon with sweet potatoes and green beans</li>\r\n</ul>\r\n\r\n<h4>Evening Snack:</h4>\r\n<ul>\r\n  <li>Cottage cheese with walnuts and a drizzle of honey</li>\r\n</ul>\r\n\r\n<h3>âš–ï¸ Caloric Surplus: The Key to Muscle Gain</h3>\r\n<p>To gain muscle, you need to be in a caloric surplus, which means consuming more calories than you burn. However, itâ€™s important to do this in a controlled way to avoid excess fat gain. Aim for a small caloric surplus of around 250â€“500 calories above your maintenance level. This ensures that your body has enough energy to build muscle without accumulating excessive fat.</p>\r\n\r\n<h3>ðŸ’¡ Tips for Successful Muscle Gain Nutrition</h3>\r\n<p>Here are some additional tips to make sure your muscle gain nutrition plan is on track:</p>\r\n\r\n<ul>\r\n  <li><strong>Track Your Intake:</strong> Consider tracking your calories and macronutrients using a food diary or app to ensure youâ€™re eating enough to support muscle growth.</li>\r\n  <li><strong>Stay Consistent:</strong> Consistency is key. Follow your meal plan and avoid skipping meals. Regular, balanced meals provide your body with a steady stream of nutrients for muscle recovery and growth.</li>\r\n  <li><strong>Hydrate:</strong> Staying hydrated is essential for muscle function and recovery. Aim for at least 8 cups of water a day, or more if you\'re training intensely.</li>\r\n  <li><strong>Avoid Processed Foods:</strong> While it\'s okay to enjoy a treat occasionally, focus on whole, nutrient-dense foods for the best results. Processed foods may be high in empty calories and can hinder your muscle gain progress.</li>\r\n  <li><strong>Supplements:</strong> While not necessary, some people find that supplements like whey protein, creatine, and branched-chain amino acids (BCAAs) help them reach their muscle gain goals. Always consult with a nutritionist or fitness professional before adding supplements to your routine.</li>\r\n</ul>\r\n\r\n<h3>ðŸ¥‡ Fuel Your Muscle Growth with FitZone</h3>\r\n<p>At <strong>FitZone Fitness Center</strong>, we understand that proper nutrition is essential to achieving your fitness goals. Whether youâ€™re building muscle, gaining strength, or improving overall health, our expert trainers are here to guide you every step of the way. We offer personalized nutrition advice, workout plans, and support to help you reach your peak performance.</p>\r\n\r\n<p><strong>Ready to fuel your muscle growth? Start your journey with FitZone today!</strong></p>\r\n\r\n<p><strong>#MuscleGainNutrition | #FuelYourGrowth | #FitZoneFitness</strong></p>', 'Programs', 'John Doe', 'blog-programs-1.jpg', '2025-04-09 01:09:04'),
(4, 'Elevate Your Workout: Choosing the Right Fitness Apparel', '<p>When it comes to fitness, the right apparel plays a crucial role in performance, comfort, and motivation. Whether you\'re hitting the gym, going for a run, or attending a yoga class, wearing the appropriate clothing can help you move better, stay cool, and avoid discomfort. At <strong>FitZone Fitness Center</strong>, we believe that the right gear can make all the difference in your workout experience. Here\'s a guide to selecting the best fitness apparel for your active lifestyle.</p>\r\n\r\n<h3>ðŸ‘š Why the Right Fitness Apparel Matters</h3>\r\n<ul>\r\n  <li><strong>Comfort:</strong> Wearing clothing that fits well and is made of breathable, moisture-wicking fabric can keep you comfortable and focused during your workout.</li>\r\n  <li><strong>Performance:</strong> Specialized fitness apparel, like compression garments, can enhance performance by supporting muscles and improving circulation.</li>\r\n  <li><strong>Motivation:</strong> Looking good and feeling confident in your fitness gear can give you an extra boost of motivation, helping you push harder in your workouts.</li>\r\n  <li><strong>Injury Prevention:</strong> Properly designed activewear can reduce friction, provide support, and help prevent injuries, especially during high-impact exercises.</li>\r\n</ul>\r\n\r\n<h3>ðŸ‘• Types of Fitness Apparel</h3>\r\n<p>Hereâ€™s a breakdown of the essential pieces of fitness clothing youâ€™ll need for different workouts:</p>\r\n<ul>\r\n  <li><strong>Sports Bras:</strong> Crucial for women during high-impact activities like running or jumping. A good sports bra provides support, reduces bounce, and ensures comfort.</li>\r\n  <li><strong>Workout Tops:</strong> Choose from t-shirts, tank tops, or long sleeves made from moisture-wicking fabrics. Look for lightweight materials that allow sweat to evaporate and help you stay dry.</li>\r\n  <li><strong>Leggings and Shorts:</strong> Whether you prefer leggings for a full-range of motion or shorts for extra breathability, ensure they are made of stretchy, durable materials that wonâ€™t ride up or restrict movement.</li>\r\n  <li><strong>Compression Wear:</strong> Compression shirts, shorts, and socks can help reduce muscle fatigue and improve recovery by enhancing circulation and providing targeted support.</li>\r\n  <li><strong>Sneakers:</strong> Investing in quality footwear is vital for injury prevention, especially for activities like running, weightlifting, or aerobics. Choose shoes that provide stability, cushioning, and arch support based on your activity.</li>\r\n  <li><strong>Jackets and Outerwear:</strong> For outdoor workouts, look for jackets made from windproof, waterproof, or insulating materials that can keep you warm and dry, no matter the weather.</li>\r\n</ul>\r\n\r\n<h3>ðŸŒŸ Key Features to Look For</h3>\r\n<ul>\r\n  <li><strong>Breathability:</strong> Fabrics like cotton, polyester, and nylon allow sweat to evaporate, keeping you cool during intense workouts.</li>\r\n  <li><strong>Moisture-Wicking:</strong> Moisture-wicking fabrics pull sweat away from your skin and allow it to evaporate quickly, helping you stay dry and comfortable.</li>\r\n  <li><strong>Stretch and Flexibility:</strong> Activewear should provide enough stretch to allow freedom of movement for exercises like squats, lunges, and yoga poses.</li>\r\n  <li><strong>Durability:</strong> Choose clothing thatâ€™s made to last and withstand the wear and tear of frequent workouts.</li>\r\n  <li><strong>Support:</strong> Items like sports bras, compression socks, and padded shoes are designed to provide extra support, reducing strain and enhancing comfort.</li>\r\n</ul>\r\n\r\n<h3>ðŸ’¡ Tips for Choosing the Right Fitness Apparel</h3>\r\n<ul>\r\n  <li><strong>Know Your Workout:</strong> Tailor your gear to the activity you\'re doing. For cardio, look for lightweight, breathable fabrics, while for strength training, opt for flexible, durable clothing that can withstand heavy movement.</li>\r\n  <li><strong>Fit is Key:</strong> Make sure your clothes fit properly â€“ not too tight and not too loose. Tight clothing can restrict blood flow, while loose clothing can interfere with movement.</li>\r\n  <li><strong>Consider the Weather:</strong> Dress in layers if you\'re working out outdoors in colder temperatures, and choose breathable fabrics if you\'re exercising in hot weather.</li>\r\n  <li><strong>Focus on Quality:</strong> Opt for high-quality fabrics that can stand up to frequent washes and intense workouts.</li>\r\n  <li><strong>Comfort Over Fashion:</strong> While looking stylish is a bonus, comfort and functionality should be your top priority when choosing fitness apparel.</li>\r\n</ul>\r\n\r\n<h3>ðŸ‘Ÿ Fitness Apparel for Every Workout at FitZone</h3>\r\n<p>At <strong>FitZone Fitness Center</strong>, we recommend investing in high-quality, performance-driven apparel that helps you perform at your best. We also offer a selection of workout gear, including moisture-wicking t-shirts, supportive sports bras, flexible leggings, and more. Come in to check out our collection and get tips from our staff on selecting the best gear for your fitness goals.</p>\r\n\r\n<p><strong>Invest in the right gear, and let it fuel your workout. Get the most out of every move!</strong><br>\r\n#FitZoneApparel | #FitnessFashion | #WorkoutGear</p>', 'Reviews', 'Pasan Ekanayake', 'blog-reviews-1.jpg', '2025-04-09 01:09:46'),
(5, 'Master Your Form: The Key to Effective Exercise Technique', '<p>Proper form and technique are crucial to getting the most out of your workouts. Whether youâ€™re lifting weights, doing bodyweight exercises, or practicing yoga, maintaining the right posture and alignment can prevent injuries, improve performance, and ensure youâ€™re targeting the right muscles. At <strong>FitZone Fitness Center</strong>, we emphasize the importance of technique to help you achieve your fitness goals safely and effectively.</p>\r\n\r\n<h3>ðŸ‹ï¸â€â™‚ï¸ Why Proper Exercise Form Matters</h3>\r\n<ul>\r\n  <li><strong>Prevents Injuries:</strong> Proper form reduces strain on joints, muscles, and ligaments, minimizing the risk of injury.</li>\r\n  <li><strong>Maximizes Effectiveness:</strong> Correct technique ensures you\'re targeting the right muscles and performing exercises to their fullest potential.</li>\r\n  <li><strong>Improves Posture:</strong> Proper form can improve your posture both during exercises and in daily life.</li>\r\n  <li><strong>Promotes Consistency:</strong> Exercising with correct form allows you to train without discomfort or pain, keeping you motivated to stay active.</li>\r\n</ul>\r\n\r\n<h3>ðŸ’ª Common Exercise Mistakes and How to Fix Them</h3>\r\n<p>Even experienced gym-goers can fall into bad habits. Here are some common mistakes to watch out for:</p>\r\n<ul>\r\n  <li><strong>Squats:</strong> Incorrect knee alignment (knees pushing inward) can lead to knee strain. Fix: Keep your knees in line with your toes and push your hips back as you squat.</li>\r\n  <li><strong>Deadlifts:</strong> Rounding your back while lifting can put stress on the spine. Fix: Keep a neutral spine, engage your core, and push through your heels.</li>\r\n  <li><strong>Push-ups:</strong> Sagging in the lower back or flaring elbows can cause shoulder pain. Fix: Keep your body in a straight line from head to heels, and elbows should stay close to the body.</li>\r\n  <li><strong>Lunges:</strong> Leaning forward or letting the knee go past the toes can cause knee strain. Fix: Keep your chest upright, and make sure your front knee is directly above the ankle.</li>\r\n  <li><strong>Planks:</strong> Allowing your hips to sag or rise can reduce effectiveness. Fix: Keep your body in a straight line, engaging your core and glutes to maintain stability.</li>\r\n</ul>\r\n\r\n<h3>ðŸŒŸ Key Principles for Good Form</h3>\r\n<ul>\r\n  <li><strong>Posture:</strong> Maintain an upright posture with a neutral spine throughout most exercises.</li>\r\n  <li><strong>Breathing:</strong> Breathe deeply and consistently. Inhale before lifting or exerting force, and exhale during the most challenging part of the movement.</li>\r\n  <li><strong>Controlled Movement:</strong> Avoid jerky or rapid movements. Perform each repetition in a controlled manner, focusing on muscle engagement.</li>\r\n  <li><strong>Mind-Muscle Connection:</strong> Focus on the muscles youâ€™re working with during each exercise, ensuring full activation for maximum results.</li>\r\n  <li><strong>Range of Motion:</strong> Perform exercises with a full range of motion to maximize flexibility, strength, and muscle development.</li>\r\n</ul>\r\n\r\n<h3>ðŸ› ï¸ How to Improve Your Exercise Technique</h3>\r\n<p>Here are a few ways to enhance your form and ensure youâ€™re getting the most out of every movement:</p>\r\n<ul>\r\n  <li><strong>Start with Light Weights:</strong> Master the technique with lighter weights before progressing to heavier loads.</li>\r\n  <li><strong>Use Mirrors:</strong> Check your form in a mirror to ensure proper posture and alignment.</li>\r\n  <li><strong>Ask for Feedback:</strong> Donâ€™t hesitate to ask a trainer or fellow gym-goer for feedback on your technique.</li>\r\n  <li><strong>Record Yourself:</strong> Film your exercises to evaluate your form and identify areas for improvement.</li>\r\n  <li><strong>Work with a Trainer:</strong> A certified trainer can provide personalized feedback and correct any form mistakes.</li>\r\n</ul>\r\n\r\n<h3>ðŸ’¡ Get Started with Perfect Form at FitZone</h3>\r\n<p>At <strong>FitZone Fitness Center</strong>, our certified trainers are always available to guide you through exercises, ensuring that you learn the proper form to maximize your results. We offer one-on-one coaching, group classes, and fitness workshops to help you master your technique in a safe, supportive environment.</p>\r\n\r\n<p><strong>Train smart, stay injury-free, and watch your progress soar!</strong><br>\r\n#FitZoneForm | #ExerciseTechnique | #TrainSmart</p>', 'Workout', 'Amy Robinson', 'blog-workout-2.jpg', '2025-04-09 01:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `contact_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `reciedved_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`contact_id`, `name`, `email`, `subject`, `message`, `reciedved_at`) VALUES
(1, 'Pasan Ekanayake', 'pasanekanayake@gmail.com', 'Say Hello!', 'Hello! How are you?', '2025-04-09 00:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `group_class_bookings`
--

CREATE TABLE `group_class_bookings` (
  `group_class_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `class_type` varchar(20) NOT NULL,
  `class_date` date NOT NULL,
  `received_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `group_class_bookings`
--

INSERT INTO `group_class_bookings` (`group_class_id`, `name`, `email`, `contact_no`, `class_type`, `class_date`, `received_at`) VALUES
(1, 'Pasan Ekanayake', 'pasanekanayake@gmail.com', 711149262, 'Strength Training', '2025-04-30', '2025-04-09 00:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `joined_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`member_id`, `first_name`, `last_name`, `email`, `weight`, `height`, `username`, `password`, `joined_at`) VALUES
(1, 'Pasan', 'Ekanayake', 'pasanekanayake@gmail.com', 178, 78, 'admin', '12345678', '2025-04-09 00:46:20'),
(2, 'Kamindu', 'Mendis', 'kamindu@gmail.com', 189, 85, 'Kamindu Mendis', '11111111', '2025-04-09 03:34:29'),
(3, 'Chathuri', 'Perera', 'chathuri@gmail.com', 165, 58, 'Chathuri', '22222222', '2025-04-09 03:36:49'),
(4, 'Zach', 'Efron', 'zach@gmail.com', 165, 58, 'Zach Efron', '33333333', '2025-04-09 03:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_counseling`
--

CREATE TABLE `nutrition_counseling` (
  `counseling_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `description` text NOT NULL,
  `reciedved_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nutrition_counseling`
--

INSERT INTO `nutrition_counseling` (`counseling_id`, `name`, `email`, `contact_no`, `description`, `reciedved_at`) VALUES
(1, 'Pasan Ekanayake', 'pasanekanayake@gmail.com', 711149262, 'I would like to get a personalized diet plan.', '2025-04-09 00:49:21'),
(2, 'Pasan Ekanayake', 'pasanekanayake@gmail.com', 711149262, 'I would like to get a personalized diet plan.', '2025-04-09 00:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `reset_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(5) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_type`, `description`) VALUES
(2, 'Group Classes', 'Choose from our variety of energizing group classes for all fitness levels.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(3, 'Nutrition Counseling', 'Our certified professionals create flexible, goal-based nutrition plans tailored to your lifestyle, fitness level, and goals.'),
(4, 'Wellness Programs', 'Our Wellness Program is designed to improve not just your body, but your entire lifestyle. We focus on physical health, mental well-being, and nutritional support to help you live your best life.'),
(5, 'Cardio Training', 'Our cardio training sessions include high-intensity workouts that improve heart health, endurance, and overall fitness. Ideal for weight loss and boosting stamina.'),
(6, 'Strength Training\r\n', 'Build muscle and increase strength with our personalized strength training routines. Whether you\'re a beginner or advanced, we help you reach your strength goals.'),
(7, 'Yoga', 'Our yoga classes provide mental relaxation, flexibility, and stress relief. From beginner to advanced levels, enjoy peaceful flow sequences that rejuvenate your body and mind.'),
(8, 'Personal Training', 'Get one-on-one training with certified trainers who tailor programs to fit your needs. Whether for weight loss, strength, or injury recovery, our experts are here to help.'),
(9, 'Spin Classes', 'Join our high-energy spin classes for an amazing cardio workout. Burn calories, improve cardiovascular health, and push your limits with every pedal.'),
(10, 'Rehabilitation', 'Our rehab programs are designed for injury recovery. Work with experienced trainers to regain strength, flexibility, and mobility safely and effectively.');

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `trainer_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `trainer_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`trainer_id`, `name`, `specialty`, `description`, `trainer_photo`) VALUES
(1, 'John Doe', 'Personal Training, Strength Training', 'John helps clients reach their fitness goals through personalized programs and focuses on strength and conditioning.', 'trainer-1.png'),
(2, 'Jane Smith', 'Yoga, Flexibility & Mobility', 'Jane is an expert in yoga and focuses on flexibility and mindfulness to help individuals achieve their best self.', 'trainer-4.jpg'),
(3, 'Michael Brown', 'Cardio, Endurance Training', 'Michael specializes in high-intensity cardio workouts that improve endurance and cardiovascular health.', 'trainer-2.jpg'),
(4, 'Sarah Lee', 'Pilates, Core Strength', 'Sarah focus is on strengthening the core through Pilates and functional movement exercises.', 'trainer-5.jpg'),
(5, 'Chris White', 'Weight Loss, Group Fitness', 'Chris specializes in group fitness classes designed to burn fat and build muscle.', 'trainer-3.jpg'),
(6, 'Emily Turner', 'Strength Training, Weightlifting', 'Emily focuses on building strength and muscle with customized weightlifting plans.', 'trainer-6.jpg'),
(7, 'David Green', 'Bootcamp, High-Intensity Training', 'David creates dynamic, high-energy bootcamp classes designed to challenge and push participants to their limits.', 'trainer-8.jpg'),
(8, 'Olivia Harris', 'Nutrition & Wellness', 'Olivia specializes in nutrition counseling and creating personalized meal plans for clients.', 'trainer-7.jpg'),
(9, 'Amy Robinson', 'Barre, Pilates Fusion', 'Amy integrates barre techniques with Pilates for a full-body workout that focuses on toning and flexibility.', 'trainer-10.jpg'),
(10, 'Daniel Carter', 'Athletic Performance, Sports Training', 'Daniel helps athletes optimize their performance through specialized training programs that target agility, speed, and power.', 'trainer-9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `training_registrations`
--

CREATE TABLE `training_registrations` (
  `training_reg_id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` int(15) NOT NULL,
  `package` varchar(50) NOT NULL,
  `reciedved_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `training_registrations`
--

INSERT INTO `training_registrations` (`training_reg_id`, `name`, `email`, `contact_no`, `package`, `reciedved_at`) VALUES
(1, 'Pasan Ekanayake', 'pasanekanayake@gmail.com', 711149262, 'premium', '2025-04-09 01:00:01'),
(2, 'Pasan Ekanayake', 'pasanekanayake@gmail.com', 711149262, 'basic', '2025-04-09 01:00:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `group_class_bookings`
--
ALTER TABLE `group_class_bookings`
  ADD PRIMARY KEY (`group_class_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `nutrition_counseling`
--
ALTER TABLE `nutrition_counseling`
  ADD PRIMARY KEY (`counseling_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `training_registrations`
--
ALTER TABLE `training_registrations`
  ADD PRIMARY KEY (`training_reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `contact_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_class_bookings`
--
ALTER TABLE `group_class_bookings`
  MODIFY `group_class_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nutrition_counseling`
--
ALTER TABLE `nutrition_counseling`
  MODIFY `counseling_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `reset_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `trainer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `training_registrations`
--
ALTER TABLE `training_registrations`
  MODIFY `training_reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
