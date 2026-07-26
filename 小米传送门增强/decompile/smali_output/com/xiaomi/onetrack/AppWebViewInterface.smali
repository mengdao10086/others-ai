.class public Lcom/xiaomi/onetrack/AppWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "OneTrack_APP_H5_Bridge"

.field private static final a:Ljava/lang/String; = "AppWebViewInterface"


# instance fields
.field private b:Lcom/xiaomi/onetrack/OneTrack;


# direct methods
.method public constructor <init>(Lcom/xiaomi/onetrack/OneTrack;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    return-void
.end method


# virtual methods
.method public track(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received h5 data. data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWebViewInterface"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 22
    const-string p1, "mOneTrack is null, return false"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 26
    :cond_21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 27
    const-string p1, "h5 data is empty, return false"

    invoke-static {v1, p1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 31
    :cond_2d
    iget-object v0, p0, Lcom/xiaomi/onetrack/AppWebViewInterface;->b:Lcom/xiaomi/onetrack/OneTrack;

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/OneTrack;->trackEventFromH5(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
