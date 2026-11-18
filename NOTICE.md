# macOS third-party materials

Bundled MediaPipe model and filter attribution and license files are under
`Licenses/macOS/snapbeauty-resources`. The dependency license texts are
included under `Licenses/macOS/snapbeauty-runtime`. Monocypher and
nlohmann/json original texts are also included.

# SnapBeauty SDK 第三方声明

本文件随 SDK 发布包分发，只列出发布包实际包含的第三方内容。

## 人脸模型

- `snapbeauty/face_detector.tflite`、`snapbeauty/face_landmarks_detector.tflite`
  来源：Google MediaPipe Face Landmarker 模型包 face_landmarker.task（float16/1）
  https://storage.googleapis.com/mediapipe-models/face_landmarker/face_landmarker/float16/1/face_landmarker.task
  许可：Apache License 2.0（https://www.apache.org/licenses/LICENSE-2.0）

## 滤镜 LUT

27 张风格滤镜由开放许可 LUT 重采样、量化并经六个全局参数调整后烘焙：

- RawTherapee Film Simulation Collection（Pat David、Pavlov Dmitry、Michael Ezra），CC BY-SA 4.0；
  对应改编 LUT 继续按 CC BY-SA 4.0 提供。
- Q-DDL Free Color LUTs（quickddl.net），CC BY 4.0。

`Licenses/macOS/snapbeauty-resources/NOTICE.md` 收录逐项来源、署名、改动与许可全文。署名不表示原作者背书。

## 其他效果资源

美白、红润、清晰、口红亮度、眼部提亮、牙齿美白等曲线与查找表，五官遮罩、美型位移模板和腮红
UV 由本项目按公式或公开的 MediaPipe canonical 人脸几何生成（Apache-2.0，原文见
`Licenses/macOS/snapbeauty-resources/NOTICE.md`）。
部分资源经过参数调整。

## 不随 SDK 分发的内容

妆容贴图与唇色由接入方按 `makeup/<层>/<层>_NN` 约定自行提供，不包含在 SDK 中，
其许可由提供方负责。
