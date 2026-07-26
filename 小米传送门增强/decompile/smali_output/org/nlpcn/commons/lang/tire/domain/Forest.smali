.class public Lorg/nlpcn/commons/lang/tire/domain/Forest;
.super Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
.source "Forest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x40106dedd3362edaL


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;-><init>()V

    return-void
.end method

.method public constructor <init>(CI[Ljava/lang/String;)V
    .registers 4

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;-><init>(CILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p1}, Lorg/nlpcn/commons/lang/tire/domain/Forest;->getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object p1

    return-object p1
.end method

.method public getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lorg/nlpcn/commons/lang/tire/domain/SmartForest<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-super {p0, p1}, Lorg/nlpcn/commons/lang/tire/domain/SmartForest;->getBranch(C)Lorg/nlpcn/commons/lang/tire/domain/SmartForest;

    move-result-object p1

    return-object p1
.end method
