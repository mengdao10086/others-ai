.class Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;
.super Ljava/lang/Object;
.source "TaplusSplashFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->initEditorCard(Lcom/miui/contentextension/text/cardview/TaplusClipboardShrinkCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)V
    .registers 2

    .line 956
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 959
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-static {p1}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->-$$Nest$fgetmNerEntities(Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_f

    move p1, v0

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Lcom/miui/contentextension/analy/ClipboardAnaly;->trackEditorCardClick(Z)V

    .line 960
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/contentextension/clipboard/EditActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 961
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 962
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    const-string v1, "clipboard_data"

    invoke-static {}, Lcom/miui/contentextension/services/TextContentExtensionService;->getClipboardContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    iget-object v1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    iget-object v1, v1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 965
    const-string p1, "Taplus.SplashFloatView"

    const-string v1, "hideClipboardFloatView by click edit card"

    invoke-static {p1, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView$13;->this$0:Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;

    invoke-virtual {p1, v0}, Lcom/miui/contentextension/text/floatview/TaplusSplashFloatView;->hideSplashFloatView(Z)V

    return-void
.end method
