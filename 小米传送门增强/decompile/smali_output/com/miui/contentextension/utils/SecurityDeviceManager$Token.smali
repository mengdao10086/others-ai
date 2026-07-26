.class public Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;
.super Ljava/lang/Object;
.source "SecurityDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/SecurityDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field private expiredInMillis:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;->token:Ljava/lang/String;

    .line 563
    iput-wide p2, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;->expiredInMillis:J

    return-void
.end method


# virtual methods
.method public getExpiredInMillis()J
    .registers 3

    .line 571
    iget-wide v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;->expiredInMillis:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/miui/contentextension/utils/SecurityDeviceManager$Token;->token:Ljava/lang/String;

    return-object v0
.end method
