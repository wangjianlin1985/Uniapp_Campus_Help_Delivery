# fx-number-box组件

### 使用方式

#### 在 scripts 中引用组件:

```
import fxNumberBox from '@/components/fx-number-box/fx-number-box.vue';
export default {
    components: {
        fxNumberBox
    }
}
</script>

```

#### 在 template  中引用组件:
```
<fx-number-box></fx-number-box>
<fx-number-box :min="0" :max="9"></fx-number-box>
<fx-number-box @change="bindChange"></fx-number-box>
```

### 属性说明:


| 属性            | 类型                     | 默认值 | 描述                                       |
| --------------- | ------------------------ | ---- | ------------------------------------------ |
| value        | Number                   | 0   | 输入框当前值                                   |
| min  | Number                   | 0   | 最小值                                   |
| max      | Number                 | 999   | 最大值                                   |
| step          | Number                 | 1   | 每次点击改变的间隔大小 |

### 事件说明


| 事件名称           | 说明                     | 返回值 |
| --------------- | ------------------------ | ---- |
| change        | 输入框值改变时触发的事件，参数为输入框当前的 value                   | -  |