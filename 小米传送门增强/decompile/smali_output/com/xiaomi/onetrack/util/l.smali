.class final Lcom/xiaomi/onetrack/util/l;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/xiaomi/onetrack/util/k$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/xiaomi/onetrack/util/k$a;)I
    .registers 3

    if-eqz p2, :cond_11

    .line 31
    iget-object p1, p2, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p2, Lcom/xiaomi/onetrack/util/k$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 28
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/xiaomi/onetrack/util/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/util/l;->a(Ljava/lang/String;Lcom/xiaomi/onetrack/util/k$a;)I

    move-result p1

    return p1
.end method
