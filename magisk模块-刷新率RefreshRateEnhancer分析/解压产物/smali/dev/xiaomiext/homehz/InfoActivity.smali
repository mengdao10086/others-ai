.class public final Ldev/xiaomiext/homehz/InfoActivity;
.super Landroid/app/Activity;
.source "InfoActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "\u5237\u65b0\u7387\u589e\u5f3a\u5df2\u968f\u6a21\u5757\u81ea\u52a8\u5b89\u88c5\uff0c\u65e0\u9700\u518d\u624b\u52a8\u88c5 APK\u3002\n\n1. \u5728 LSPosed \u4e2d\u542f\u7528\u672c\u6a21\u5757\uff0c\u4f5c\u7528\u57df\u52fe\u9009\u300c\u7cfb\u7edf\u684c\u9762\u300d\u548c\u300c\u7cfb\u7edf\u754c\u9762\u300d\u3002\n2. \u8bf7\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u5f00\u542f\u300c\u6027\u80fd\u6a21\u5f0f\u300d\uff0c\u4ee5\u5b9e\u73b0\u5168\u5c40\u9ad8\u5237\u65b0\u7387\u3002\n3. \u5cf0\u503c\u8ddf\u968f\u9762\u677f\uff08144 / 165 / 185Hz \u7b49\uff09\uff0c\u4e0d\u662f\u5199\u6b7b 165\u3002\n4. \u6539\u5b8c\u4f5c\u7528\u57df\u540e\u8bf7\u91cd\u542f\u4e00\u6b21\uff0c\u8ba9 hook \u8fdb\u5165\u684c\u9762\u8fdb\u7a0b\u3002"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    const/4 v0, 0x2

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 22
    const/4 v0, 0x0

    const v1, 0x3f933333    # 1.15f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 23
    const/16 v0, 0x30

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    const v1, -0xededee

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0, v0}, Ldev/xiaomiext/homehz/InfoActivity;->setContentView(Landroid/view/View;)V

    .line 28
    return-void
.end method
