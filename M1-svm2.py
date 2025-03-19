
import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.svm import SVC
# from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, confusion_matrix
import matplotlib.pyplot as plt
import seaborn as sns
import os

# 设置字体和负号显示
plt.rcParams['font.sans-serif'] = ['SimHei']  # 指定默认字体为黑体
plt.rcParams['axes.unicode_minus'] = False    # 解决负号显示异常

# 设置输出路径
output_path = r"E:\2424"  # 使用原始字符串避免路径问题
os.makedirs(output_path, exist_ok=True)

# 加载数据集
data = pd.read_csv(r"E:\simulated_dataset.csv")  # 使用原始字符串

# 数据集的结构：每行是一个图像，像素值以空格分隔，标签在最后一列
X = data.iloc[:, :-1].values  # 提取像素值作为特征
y = data.iloc[:, -1].values  # 提取标签

# 将像素值归一化到0-1
X = X / 255.0

# 划分训练集和测试集
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# 初始化SVM分类器
svm_classifier = SVC(kernel='rbf', C=1.0, gamma='scale', random_state=42)
# rf_classifier = RandomForestClassifier(n_estimators=100, random_state=42)

# 训练模型
svm_classifier.fit(X_train, y_train)

# 预测测试集
y_pred = svm_classifier.predict(X_test)

# 评估模型
print("Classification Report:")
classification_rep = classification_report(y_test, y_pred)  # 将输出赋值给 classification_rep
print(classification_rep)

print("Confusion Matrix:")
print(confusion_matrix(y_test, y_pred))

# 将分类报告保存为文本文件
classification_report_path = os.path.join(output_path, "classification_report_svm2.txt")
with open(classification_report_path, "w") as f:
    f.write(classification_rep)  # 写入文件
print(f"Classification report saved to {classification_report_path}")

# 将预测结果保存到CSV文件
predictions_df = pd.DataFrame({'Actual': y_test, 'Predicted': y_pred})
predictions_path = os.path.join(output_path, "predictions.csv")
predictions_df.to_csv(predictions_path, index=False)
print(f"Predictions saved to {predictions_path}")

# 可视化混淆矩阵
plt.figure(figsize=(10, 8))
sns.heatmap(confusion_matrix(y_test, y_pred), annot=True, fmt='d', cmap='Blues',
            xticklabels=["快乐", "悲伤", "中性"], yticklabels=["快乐", "悲伤", "中性"])
plt.xlabel('预测')
plt.ylabel('实际')
plt.title('混淆矩阵')
plt.show()

# 可视化混淆矩阵并保存到文件
plt.figure(figsize=(10, 8))
conf_matrix = confusion_matrix(y_test, y_pred)
sns.heatmap(conf_matrix, annot=True, fmt='d', cmap='Blues',
            xticklabels=["快乐", "悲伤", "中性"], yticklabels=["快乐", "悲伤", "中性"])
plt.xlabel('预测')
plt.ylabel('实际')
plt.title('混淆矩阵')
confusion_matrix_path = os.path.join(output_path, "confusion_matrix_svm.png")
plt.savefig(confusion_matrix_path)  # 保存图像到文件
plt.close()  # 关闭图像，避免显示
print(f"Confusion matrix saved to {confusion_matrix_path}")