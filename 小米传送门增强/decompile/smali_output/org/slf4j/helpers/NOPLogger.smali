.class public Lorg/slf4j/helpers/NOPLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "NOPLogger.java"


# static fields
.field public static final NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

.field private static final serialVersionUID:J = -0x72d8937e719b999L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lorg/slf4j/helpers/NOPLogger;

    invoke-direct {v0}, Lorg/slf4j/helpers/NOPLogger;-><init>()V

    sput-object v0, Lorg/slf4j/helpers/NOPLogger;->NOP_LOGGER:Lorg/slf4j/helpers/NOPLogger;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "NOP"

    return-object v0
.end method

.method public final info(Ljava/lang/String;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 0
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    return-void
.end method
