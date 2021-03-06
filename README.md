# gitbook

## 基于

这个镜像基于[puritys/gitbook](https://hub.docker.com/r/puritys/gitbook)做了两处改进：

1. 支持ebook-convert选项
2. cjk字体替换为支持`--subset-embedded-fonts`选项的字体

### 支持ebook-convert选项

参照[Allow the ability to pass specific options to ebook-convert](https://github.com/GitbookIO/gitbook/pull/1282)，直接基于镜像修改相关代码。

Margin values are specified in points. Descriptions for the available options can be found in the [`ebook-convert` documentation](https://manual.calibre-ebook.com/generated/en/ebook-convert.html#pdf-input-options).

Example configuration:

```json
"pdf": {
  "ebookConvertOptions": {
    "--subset-embedded-fonts": true
  }
}

```

### CJK字体替换为支持`--subset-embedded-fonts`选项的字体

镜像中的字体文件为`NotoSansCJKsc`otf格式，无法支持[--subset-embedded-fonts](https://manual.calibre-ebook.com/generated/en/ebook-convert.html#cmdoption-ebook-convert-subset-embedded-fonts)参数，替换为`SourceHanSansCN-Normal.ttf`
