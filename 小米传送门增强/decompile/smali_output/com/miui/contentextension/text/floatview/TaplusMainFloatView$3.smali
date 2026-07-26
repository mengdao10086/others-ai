.class Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$3;
.super Ljava/lang/Object;
.source "TaplusMainFloatView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;->prepareScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$3;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 301
    const-string p1, "Taplus.TaplusMainFloatView"

    const-string v0, "quitByDefault by click close icon"

    invoke-static {p1, v0}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object p1, p0, Lcom/miui/contentextension/text/floatview/TaplusMainFloatView$3;->this$0:Lcom/miui/contentextension/text/floatview/TaplusMainFloatView;

    iget-object p1, p1, Lcom/miui/contentextension/text/floatview/BaseFloatView;->mService:Lcom/miui/contentextension/services/TextContentExtensionService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "close_button"

    invoke-virtual {p1, v2, v0, v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->quitByDefault(Ljava/lang/String;ZZ)V

    return-void
.end method
