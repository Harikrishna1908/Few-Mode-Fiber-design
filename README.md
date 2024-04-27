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
**2.2 WAVE GUIDE EQUATIONS**
Consider electromagnetic waves propagating along the cylindrical fibre with cylindrical coordinate system {r.ϕ,z} is defined with along the z axis of the cylindrical waveguide(i.e. Optical fiber). The 
Electromagnetic waves are to propagate along z axis, they will have a functional dependence in the form of
𝑬 = 𝑬𝟎(𝑟, 𝜙)𝑒𝑗(𝜔𝑡−𝛽𝑧)(2.7)
𝑯 = 𝑯𝟎(𝑟,𝜙)𝑒𝑗(𝜔𝑡−𝛽𝑧)(2.8)
When Eqs (2.7) and (2.8) are substituted in Maxwell’s Curl Eqs
we have(App.A) 
1/𝑟(𝜕𝐸𝑧/𝜕𝜙 + 𝑗𝑟𝛽𝐸𝜙) = −𝑗𝜔𝜇𝐻𝑟(2.9)
𝑗𝛽𝐸𝑟 +𝜕𝐸𝑧/𝜕𝑟 = 𝑗𝜔𝜇𝐻𝜙 (2.10)
1/𝑟(𝜕(𝑟𝐸𝜙)/𝜕𝑟 −𝜕𝐸𝑟/𝜕𝜙 ) = −𝑗𝜔𝜇𝐻𝑧 (2.11)
1/𝑟(𝜕𝐻𝑧/𝜕𝜙 + 𝑗𝑟𝛽𝐻𝜙) = 𝑗𝜔𝜇𝐸𝑟 (2.12)
𝑗𝛽𝐻𝑟 +𝜕𝐻𝑧/𝜕𝑟 = −𝑗𝜔𝜇𝐸 (2.13)
1/𝑟(𝜕(𝑟𝐻𝜙)/𝜕𝑟 −𝜕𝐻𝑟/𝜕𝜙 ) = 𝑗𝜔𝜇𝐸𝑧 (2.14)
By eliminating the variables these equations can be such that, when Ez
and 𝐻𝑧 are known, the remaining transverse component Eϕ, Er,Hϕ and Hrcan be determined by
𝐸𝑟 = −𝑗/𝑞^2(𝛽𝜕𝐸𝑧/𝜕𝑟 +𝜇𝜔/𝑟 𝜕𝐻𝑧/𝜕𝜙 ) (2.15)
𝐸𝜙 = −𝑗/𝑞^2(𝛽/𝑟 𝜕𝐸𝑧/𝜕𝜙 + 𝜇𝜔 𝜕𝐻𝑧/𝜕𝑟 ) (2.16)
𝐻𝑟 = −
𝑗/𝑞^2(𝛽𝜕𝐻𝑧/𝜕𝑟 +𝜀𝜔/𝑟 𝜕𝐸𝑧/𝜕𝜙 ) (2.17)
𝐻𝜙 = −
𝑗
𝑞
2
(
𝛽
𝑟
𝜕𝐻𝑧
𝜕𝜙 + 𝜀𝜔
𝜕𝐸𝑧
𝜕𝑟 ) (2.18)
Where, 
 𝑞
2 = 𝜔
2
𝜀𝜇 − 𝛽
2
 (2.19)
Substitution of eqs (2.17) and (2.18) in (2.14) and eqs (2.15) and (2.16) in 
(2.11) respectively results in the wave equation in cylindrical coordinates 
𝜕
2𝐸𝑧
𝜕𝑟
2 +
1
𝑟
𝜕𝐸𝑧
𝜕𝑟 +
1
𝑟
2
𝜕
2𝐸𝑧
𝜕∅2 + 𝑞
2𝐸𝑧 = 0 (2.20)
𝜕
2𝐻𝑧
𝜕𝑟
2 +
1
𝑟
𝜕𝐻𝑧
𝜕𝑟 +
1
𝑟
2
𝜕
2𝐻𝑧
𝜕∅2 + 𝑞
2𝐻𝑧 = 0 (2.21)
This appears to imply the longitudinal components E and H are uncoupled 
and can be chosen arbitrarily provided they satisfy the eqs (2.20) and (2.21)
If the boundary conditions do not lead to coupling between the field 
components, mode solutions can be obtained in which either Ez = 0 or Hz
= 0. When Ez = 0 the modes are called transverse electric or TE modes, 
and when Hz = 0 they are called transverse magnetic or TM modes. Hybrid 
modes exist if both Ez
and Hz
are non-zero. These are designated as HE 
or EH modes, depending on whether Hz or Ez
, respectively, makes a larger 
contribution to the transverse field. The fact that the hybrid modes are 
present in optical waveguides makes their analysis more complex than in 
the simpler case of hollow metallic waveguides where only TE and TM 
modes are found 
2.3 WAVE EQUATIONS
For the configuration of the step-index fibre we consider a homogeneous 
core of refractive index n1 and radius a, which is surrounded by an infinite 
cladding of index n2. The reason for assuming an infinitely thick cladding 
is that the guided modes in the core have exponentially decaying fields 
outside the core and these must have insignificant values at the outer 
boundary of the cladding. In practice, optical fibres are designed with 
claddings that are sufficiently thick so that the guided-mode field does not 
reach the outer boundary of the cladding
We solve the above partial differential equations using variable separation 
method. Being solved for the regions inside and outside the core. For the 
inside region the solutions for the guided modes must remain finite as 𝑟 →
0, whereas on the outside the solutions must decay to zero as 𝑟 → ∞. Thus, 
for 𝑟 < 0the solutions are Bessel functions of the first kind of order 𝜗. For 
these functions we use the common designation 𝐽𝑣
(𝑢𝑟). 
Here,𝑢
2 = 𝑘1
2 − 𝛽
2
 and 𝑘1 =
2𝜋𝑛1
𝜆
’ The expressions for Ez and Hz 
inside the core are thus[1]
𝐸𝑧
(𝑟 < 𝑎) = 𝐴𝐽𝑣
(𝑢𝑟) 𝑒
𝑗𝑣∅𝑒
𝑗(𝑤𝑡−𝛽𝑧)
 (2.22)
𝐻𝑧
(𝑟 < 𝑎) = 𝐵𝐽𝑣
(𝑢𝑟) 𝑒
𝑗𝑣∅𝑒
𝑗(𝑤𝑡−𝛽𝑧)
 (2.23)
where A and B are arbitrary constants. Outside of the core the solutions are
given by modified Bessel functions of the second kind, 𝐾𝑣
(𝑤𝑟), where 
𝑤2 = 𝛽
2 − 𝑘2
2
, 𝑘2 =
2𝜋𝑛2
𝜆
. The expressions for 𝐸𝑧
and 𝐻𝑧outside the 
core are therefore.
8
Modified Bessel Function for Cladding:
𝐸𝑧
(𝑟 > 𝑎) = 𝐶𝐾𝑣
(𝑤𝑟) 𝑒
𝑗𝑣∅𝑒
𝑗(𝑤𝑡−𝛽𝑧)
 (2.24)
𝐻𝑧
(𝑟 > 𝑎) = 𝐷𝐾𝑣
(𝑤𝑟) 𝑒
𝑗𝑣∅𝑒
𝑗(𝑤𝑡−𝛽𝑧)
 (2.25)
 
 Fig 5: Modified Bessel Function [1]
With 𝐶 and 𝐷 being arbitrary constants. The definitions of 𝐽𝑣
(𝑢𝑟) and
𝐾𝑣
(𝑤𝑟) and various recursion relation are given in App.B.
From the definition of the modified Bessel function, it is seen that
𝐾𝑣
(𝑤𝑟) → 𝑒
−𝜔𝑟 as 𝜔𝑟 → ∞. Since 𝐾𝑣
(𝑤𝑟) must go to zero as 𝑟 → ∞, 
it follows that ω > 0. This, in turn, implies that β ≥ k2, which represents a 
cutoff condition. The cutoff condition is the point at which a mode is no 
longer bound to the core region. A second condition on β can be deduced 
from the behavior of 𝐽𝑣
(𝑢𝑟). Inside the core the parameter u must be real 
from which it follows that k1 ≥ β. The permissible range of β for the bound 
solutions is therefore
𝑛2𝑘 ≤ 𝛽 ≤ 𝑛1𝑘 (2.26)
An important parameter connected with the cutoff condition is the 
normalized frequency V (also called the V number or V parameter) defined 
by[1]
𝑉 =
2𝜋𝑎
𝜆
√𝑛1
2 − 𝑛2
2
 (2.27)
which is a dimensionless number that determines how many modes a fiber 
can support. The number of modes that can exist in a waveguide as a 
function of V may be conveniently represented in terms of a normalized 
propagation constant b defined by
9
𝑏 =
(
𝛽
𝑘
)
2
−𝑛2
2
𝑛1
2−𝑛2
2 =
𝑊2𝑎
2
𝑉2
 (2.28)
The Fig .4 shows that each mode can exist only for values of V that exceed 
a certain limiting value. The modes are cut off when 𝛽
𝑘
= 𝑛2. The LP01mode 
has no cutoff and ceases to exist only when the core diameter is zero. This 
is the principle on which the single-mode fiber is based. 
By appropriately choosing a, 𝑛1, and 𝑛2 so that
𝑉 =
2𝜋𝑎
𝜆
√𝑛1
2 − 𝑛2
2 ≤ 2.4048 (2.29
**2.INVERSE MODELLING DESIGN**
Inverse modeling design refers to the process of determining the parameters or 
properties of a system based on observed or desired behavior. In the context of fiber 
optics, inverse modeling design involves determining the characteristics of a fiber that 
would produce a desired optical response or performance. The inverse modelling design 
for four mode few mode fiber can be divide into two steps forward design and inverse 
design.
**2.1 Forward Design**
In forward design we have to define the fiber optic parameters like V number, radius 
of the core and cladding, refractive index of core and cladding, numerical 
aperture,Effective area and ∆neff . Generated a dataset of 1984 samples by varying the 
fiber parameters(refractive index of core and core radius) using multiple simulations in 
COMSOL Multiphysics 
**2.2 Inverse Design**
The generated dataset is split into training and test dataset. Train the inverse model 
using the training dataset to learn the relationship between the fiber parameters and the 
desired optical response. This step typically involves adjusting the model parameters to 
minimize the difference between predicted and observed optical behaviour. Validate the 
trained model using independent test data to ensure its accuracy and reliability. If 
necessary, optimize the model further to improve its performance or generalization 
capabilities. The target optical properties like difference of the effective mode refractive 
indices ∆neff ≥ 1 x 10-3and the effective area ≥ 90 µm2of the LP modes of Four mode 
FMF LP01, LP11, LP21, LP02 respectively are implemented as desired properties to the 
inverse model to predict the desired design. Here we used two types of ML algorithms 
for inverse modelling which are the decision tree and the gradient booster algorithms
MACHINE LEARNING ALGORITHMS
Here in inverse modelling since we have a continuous dataset we use the regression 
for predict the desired optical fiber design. Here we use the decision tree and gradient 
booster algorithm for designing the four mode few mode fiber
3.1 The Decision Tree Algorithm
A decision tree is a supervised machine learning algorithm used for both 
classification and regression tasks. It's a graphical representation of a decision-making 
process that resembles a tree structure, where each internal node represents a decision 
based on a feature, each branch represents the outcome of the decision, and each leaf 
node represents the final decision or outcome
In decision trees, each node represents a feature along with a decision rule (e.g., the ∆neff = 1.9 x 10-3).For continuous data like optical fiber measurements, the decision tree 
algorithm selects the feature and threshold that best separates the data into different 
classes (e.g., "desirable" vs. "non-desirable").The decision tree then recursively splits 
the data based on these thresholds until a stopping criterion is met, such as reaching a 
maximum tree depth or no further improvement in impurity reduction. This process 
results in a tree structure where each leaf node represents a class label (e.g., "desirable 
design" vs. "non-desirable design"), and each internal node represents a decision based 
on a feature and threshold. Here the threshold ∆neff = 1 x 10-3
 and the Effective area = 
120 µm2 .
**3.2 The Gradient Boosting Algorithm **
Gradient boosting is a machine learning technique used for both regression and 
classification tasks. It's an ensemble learning method that combines the predictions of 
multiple weak learners, typically decision trees, to create a strong predictive model. The 
basic idea behind gradient boosting is to sequentially train new models to correct the 
errors made by the previous models, with each new model focusing on the residuals or 
errors of the combined ensemble..
 Gradient boosting starts with a simple weak learner, often a decision tree with only a 
few splits. This weak learner makes predictions based on the input parameters of the 
fiber design. The model is trained sequentially, where each new weak learner corrects 
the errors made by the previous ones. The new weak learner focuses on the data points 
that were misclassified or had high errors by the existing model.
During training, gradient descent optimization is used to minimize a loss function, 
such as mean squared error or mean absolute error. This loss function measures how far 
off the model's predictions are from the actual values in the training data. Each weak 
learner contributes to the final prediction by a certain weight, determined during training. 
The weights are assigned based on the performance of the weak learner in reducing the 
overall error of the model. The predictions of all the weak learners are combined to 
produce the final ensemble prediction. Once the gradient boosting model is trained, it 
can be used to predict the finest design of the few-mode fiber by inputting various fiber 
configuration parameters. The model will then output predictions for the fiber properties 
based on those parameter
