.class public final enum Lorg/ansj/util/TermUtil$InsertTermType;
.super Ljava/lang/Enum;
.source "TermUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ansj/util/TermUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InsertTermType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ansj/util/TermUtil$InsertTermType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ansj/util/TermUtil$InsertTermType;

.field public static final enum REPLACE:Lorg/ansj/util/TermUtil$InsertTermType;

.field public static final enum SCORE_ADD_SORT:Lorg/ansj/util/TermUtil$InsertTermType;

.field public static final enum SKIP:Lorg/ansj/util/TermUtil$InsertTermType;


# direct methods
.method private static synthetic $values()[Lorg/ansj/util/TermUtil$InsertTermType;
    .registers 3

    .line 43
    sget-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->SKIP:Lorg/ansj/util/TermUtil$InsertTermType;

    sget-object v1, Lorg/ansj/util/TermUtil$InsertTermType;->REPLACE:Lorg/ansj/util/TermUtil$InsertTermType;

    sget-object v2, Lorg/ansj/util/TermUtil$InsertTermType;->SCORE_ADD_SORT:Lorg/ansj/util/TermUtil$InsertTermType;

    filled-new-array {v0, v1, v2}, [Lorg/ansj/util/TermUtil$InsertTermType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    new-instance v0, Lorg/ansj/util/TermUtil$InsertTermType;

    const-string v1, "SKIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ansj/util/TermUtil$InsertTermType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->SKIP:Lorg/ansj/util/TermUtil$InsertTermType;

    .line 51
    new-instance v0, Lorg/ansj/util/TermUtil$InsertTermType;

    const-string v1, "REPLACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ansj/util/TermUtil$InsertTermType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->REPLACE:Lorg/ansj/util/TermUtil$InsertTermType;

    .line 55
    new-instance v0, Lorg/ansj/util/TermUtil$InsertTermType;

    const-string v1, "SCORE_ADD_SORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ansj/util/TermUtil$InsertTermType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->SCORE_ADD_SORT:Lorg/ansj/util/TermUtil$InsertTermType;

    .line 43
    invoke-static {}, Lorg/ansj/util/TermUtil$InsertTermType;->$values()[Lorg/ansj/util/TermUtil$InsertTermType;

    move-result-object v0

    sput-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->$VALUES:[Lorg/ansj/util/TermUtil$InsertTermType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ansj/util/TermUtil$InsertTermType;
    .registers 2

    .line 43
    const-class v0, Lorg/ansj/util/TermUtil$InsertTermType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ansj/util/TermUtil$InsertTermType;

    return-object p0
.end method

.method public static values()[Lorg/ansj/util/TermUtil$InsertTermType;
    .registers 1

    .line 43
    sget-object v0, Lorg/ansj/util/TermUtil$InsertTermType;->$VALUES:[Lorg/ansj/util/TermUtil$InsertTermType;

    invoke-virtual {v0}, [Lorg/ansj/util/TermUtil$InsertTermType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ansj/util/TermUtil$InsertTermType;

    return-object v0
.end method
