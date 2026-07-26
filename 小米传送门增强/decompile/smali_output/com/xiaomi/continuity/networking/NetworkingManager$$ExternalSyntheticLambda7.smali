.class public final synthetic Lcom/xiaomi/continuity/networking/NetworkingManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/xiaomi/continuity/networking/INetworkingManager;

    invoke-static {p1}, Lcom/xiaomi/continuity/networking/NetworkingManager;->$r8$lambda$Pi_CNsXzzcPhJhDGWvs2Kzwii-s(Lcom/xiaomi/continuity/networking/INetworkingManager;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
