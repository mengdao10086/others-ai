.class Lcom/miui/contentextension/setting/preference/GuidePreference$2;
.super Ljava/lang/Object;
.source "GuidePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/preference/GuidePreference;->initView(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/preference/GuidePreference;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 147
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/preference/GuidePreference;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 151
    :cond_d
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/preference/GuidePreference;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "key_dev_developer_mode_v1"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->getTaplusSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    return-void

    .line 156
    :cond_1d
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {v0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J

    move-result-object v0

    iget-object v2, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {v2}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {v0}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, p1, v0

    .line 158
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmClicks(Lcom/miui/contentextension/setting/preference/GuidePreference;)[J

    move-result-object p1

    aget-wide v0, p1, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    sub-long/2addr v4, v6

    cmp-long p1, v0, v4

    if-ltz p1, :cond_71

    .line 159
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmOnGuidePreferenceClickListener(Lcom/miui/contentextension/setting/preference/GuidePreference;)Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/miui/contentextension/setting/preference/GuidePreference$OnGuidePreferenceClickListener;->OnGuidePreferenceClick(Z)V

    .line 160
    iget-object p1, p0, Lcom/miui/contentextension/setting/preference/GuidePreference$2;->this$0:Lcom/miui/contentextension/setting/preference/GuidePreference;

    invoke-static {p1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/preference/GuidePreference;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1001e6

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    :cond_71
    return-void
.end method
