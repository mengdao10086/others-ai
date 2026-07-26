.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->generateNerCard(Lcom/miui/contentextension/data/recognition/Entity;Landroid/widget/LinearLayout;)Lcom/miui/contentextension/text/cardview/TaplusRecommendShrinkCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

.field final synthetic val$entity:Lcom/miui/contentextension/data/recognition/Entity;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;Lcom/miui/contentextension/data/recognition/Entity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1098
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iput-object p2, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;->val$entity:Lcom/miui/contentextension/data/recognition/Entity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1101
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;->val$entity:Lcom/miui/contentextension/data/recognition/Entity;

    invoke-static {v0}, Lcom/miui/contentextension/analy/ClipboardAnaly;->trackNerCardClick(Lcom/miui/contentextension/data/recognition/Entity;)V

    .line 1102
    iget-object v0, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;->val$entity:Lcom/miui/contentextension/data/recognition/Entity;

    invoke-virtual {v0}, Lcom/miui/contentextension/data/recognition/Entity;->getEntityClass()Ljava/lang/String;

    move-result-object v0

    .line 1103
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/contentextension/clipboard/utils/ClipboardUtils;->generateNerIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1104
    const-string v1, "hideClipboardFloatView by click ner card"

    const-string v2, "Taplus.SplashFloatView"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$15;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    if-nez v0, :cond_2c

    .line 1107
    const-string p1, "click ner card, skip to null"

    invoke-static {v2, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 1109
    :cond_2c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/AppsUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_33
    return-void
.end method
