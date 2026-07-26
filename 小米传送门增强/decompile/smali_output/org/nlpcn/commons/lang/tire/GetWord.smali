.class public Lorg/nlpcn/commons/lang/tire/GetWord;
.super Lorg/nlpcn/commons/lang/tire/SmartGetWord;
.source "GetWord.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/nlpcn/commons/lang/tire/SmartGetWord<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/nlpcn/commons/lang/tire/domain/Forest;[C)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;-><init>(Lorg/nlpcn/commons/lang/tire/domain/SmartForest;[C)V

    return-void
.end method


# virtual methods
.method public getParams()[Ljava/lang/String;
    .registers 2

    .line 31
    invoke-virtual {p0}, Lorg/nlpcn/commons/lang/tire/SmartGetWord;->getParam()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
