# PyTorch Ecosystem Day 2021 Highlights

- Distributed or Accelerated Training
	- `torch_ort` Using one line of code to adopt ONNX runtime for your model training
```python
from torch_ort import ORTModule
model = ORTModule(MyModel().to(devide))
```