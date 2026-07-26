.class Lorg/ansj/library/UserDefineLibrary$1;
.super Ljava/lang/Object;
.source "UserDefineLibrary.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ansj/library/UserDefineLibrary;->findLibrary(Ljava/lang/String;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    .line 235
    const-string v0, ".dic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method
