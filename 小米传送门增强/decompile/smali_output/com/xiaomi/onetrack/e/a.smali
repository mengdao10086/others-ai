.class public Lcom/xiaomi/onetrack/e/a;
.super Lcom/xiaomi/onetrack/f/b;


# static fields
.field private static final d:Ljava/lang/String; = "CustomEvent"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 18
    invoke-direct {p0}, Lcom/xiaomi/onetrack/f/b;-><init>()V

    .line 20
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p3}, Lcom/xiaomi/onetrack/f/b;->c(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/onetrack/f/b;->b(J)V

    .line 24
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/onetrack/f/b;->b(Lorg/json/JSONObject;)V

    .line 25
    invoke-static {}, Lcom/xiaomi/onetrack/b/h;->a()Lcom/xiaomi/onetrack/b/h;

    move-result-object p2

    const-string p4, "level"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, p4, v0}, Lcom/xiaomi/onetrack/b/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/f/b;->a(I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    goto :goto_45

    :catch_2a
    move-exception p1

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CustomEvent error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CustomEvent"

    invoke-static {p2, p1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method
