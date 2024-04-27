# Few-Mode-Fiber-design
Designing of few mode fiber for Spacace division multiplexing using inverse modelling tedchnique

**1.INTRODUCTION**

The primary impetus behind the shift from single mode fibers to multi mode or few mode fibers stems from the inherent non-linearity within fiber optics. This non-linearity acts as a bottleneck for single mode fibers, constraining their ability to efficiently transmit data. By confining light to a single mode, these fibers limit the volume of information that can be conveyed, a drawback exacerbated in high-capacity systems necessitating the multiplexing of multiple data streams. Furthermore, the non-linear behaviour inherent in single mode fibers not only restricts their capacity for data transmission but also poses challenges in maintaining signal integrity and fidelity over extended distances, highlighting the imperative for adopting novel fiber technologies. 
Consequently, there has been a concerted effort to explore alternative fiber technologies such as multi mode and few mode fibers, which offer enhanced data transmission capabilities and circumvent the limitations posed by non-linearity in single mode fibers.
Few mode fibers present a compelling alternative as they can support multiple spatial modes like multi mode fibers but typically have a lower mode density, making fabrication and alignment less challenging and costly. Few mode fibers enable parallel transmission of data streams, leading to higher data rates and accommodating more channels. Additionally, by utilizing different spatial modes, they make more efficient use of the available spectrum, maximizing the transmission capacity of the fiber.
Machine learning is changing how we understand fibers. It's better than traditional methods because it handles complicated stuff well. With machine learning, we use data to learn and make models. This helps us find patterns that we might not see otherwise. 
These models are good at dealing with different kinds of data and can handle big datasets. They're also easy to update and can work on lots of different things. Plus, they can do a lot of the work by themselves, which makes things faster and easier for everyone. Overall, machine learning is a great tool for studying fibers because it's accurate, adaptable, and easy to us.

**2.MODE THEORY OF OPTICAL FIBRES**

**2.1 MAXWELL’S EQUATIONS**

To analyze the optical fiber, we need to consider Maxwell’s equations that give the relationships between the electric and magnetic fields. Assuming a linear, isotropic dielectric material having no currents and free charges, 
these equations take the form.
∇ × 𝐸 = −𝜕𝐵/𝜕𝑡 (2.1)
∇ × 𝐻 =𝜕𝐷/𝜕𝑡 (2.2)
∇ ∙ 𝐷 = 0 (2.3)
∇ ∙ 𝐵 = 0 (2.4)
Where D = εE and B = μH.The parameter 𝜖 is the permittivity and 𝜇 is the permeability of the medium. A relationship defining the wave phenomena of the electromagnetic fields can be derived from Maxwell’s equations.

**3.INVERSE MODELLING DESIGN**

Inverse modeling design refers to the process of determining the parameters or properties of a system based on observed or desired behavior. In the context of fiber optics, inverse modeling design involves determining the characteristics of a fiber that 
would produce a desired optical response or performance. The inverse modelling design for four mode few mode fiber can be divide into two steps forward design and inverse design.

**3.1 Forward Design**
In forward design we have to define the fiber optic parameters like V number, radius of the core and cladding, refractive index of core and cladding, numerical aperture,Effective area and ∆neff . Generated a dataset of 1984 samples by varying the fiber parameters(refractive index of core and core radius) using multiple simulations in COMSOL Multiphysics 

**3.2 Inverse Design:**
The generated dataset is split into training and test dataset. Train the inverse model using the training dataset to learn the relationship between the fiber parameters and the desired optical response. This step typically involves adjusting the model parameters to 
minimize the difference between predicted and observed optical behaviour. Validate the trained model using independent test data to ensure its accuracy and reliability. If necessary, optimize the model further to improve its performance or generalization capabilities. The target optical properties like difference of the effective mode refractive indices ∆neff ≥ 1 x 10-3and the effective area ≥ 90 µm2of the LP modes of Four mode FMF LP01, LP11, LP21, LP02 respectively are implemented as desired properties to the inverse model to predict the desired design. Here we used two types of ML algorithms for inverse modelling which are the decision tree and the gradient booster algorithms

**4.MACHINE LEARNING ALGORITHMS**
Here in inverse modelling since we have a continuous dataset we use the regression for predict the desired optical fiber design. Here we use the decision tree and gradient booster algorithm for designing the four mode few mode fiber

**4.1 The Decision Tree Algorithm:**
A decision tree is a supervised machine learning algorithm used for both classification and regression tasks. It's a graphical representation of a decision-making process that resembles a tree structure, where each internal node represents a decision 
based on a feature, each branch represents the outcome of the decision, and each leaf node represents the final decision or outcomeIn decision trees, each node represents a feature along with a decision rule (e.g., the ∆neff = 1.9 x 10-3).For continuous data like optical fiber measurements, the decision tree algorithm selects the feature and threshold that best separates the data into different classes (e.g., "desirable" vs. "non-desirable").The decision tree then recursively splits the data based on these thresholds until a stopping criterion is met, such as reaching a maximum tree depth or no further improvement in impurity reduction. This process results in a tree structure where each leaf node represents a class label (e.g., "desirable 
design" vs. "non-desirable design"), and each internal node represents a decision based on a feature and threshold. Here the threshold ∆neff = 1 x 10-3and the Effective area = 120 µm2 .

**4.2 The Gradient Boosting Algorithm L:**
Gradient boosting is a machine learning technique used for both regression and classification tasks. It's an ensemble learning method that combines the predictions of multiple weak learners, typically decision trees, to create a strong predictive model. The basic idea behind gradient boosting is to sequentially train new models to correct the errors made by the previous models, with each new model focusing on the residuals or errors of the combined ensemble.Gradient boosting starts with a simple weak learner, often a decision tree with only a few splits. This weak learner makes predictions based on the input parameters of the fiber design. The model is trained sequentially, where each new weak learner corrects the errors made by the previous ones. The new weak learner focuses on the data points 
that were misclassified or had high errors by the existing model.During training, gradient descent optimization is used to minimize a loss function, such as mean squared error or mean absolute error. This loss function measures how far off the model's predictions are from the actual values in the training data. Each weak learner contributes to the final prediction by a certain weight, determined during training. The weights are assigned based on the performance of the weak learner in reducing the overall error of the model. The predictions of all the weak learners are combined to produce the final ensemble prediction. Once the gradient boosting model is trained, it can be used to predict the finest design of the few-mode fiber by inputting various fiber configuration parameters. The model will then output predictions for the fiber properties based on those parameter
.
