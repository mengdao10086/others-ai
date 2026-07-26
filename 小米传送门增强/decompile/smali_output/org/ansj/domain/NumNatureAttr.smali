.class public Lorg/ansj/domain/NumNatureAttr;
.super Ljava/lang/Object;
.source "NumNatureAttr.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NULL:Lorg/ansj/domain/NumNatureAttr;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public flag:Z

.field public numEndFreq:I

.field public numFreq:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lorg/ansj/domain/NumNatureAttr;

    invoke-direct {v0}, Lorg/ansj/domain/NumNatureAttr;-><init>()V

    sput-object v0, Lorg/ansj/domain/NumNatureAttr;->NULL:Lorg/ansj/domain/NumNatureAttr;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lorg/ansj/domain/NumNatureAttr;->numFreq:I

    .line 18
    iput v0, p0, Lorg/ansj/domain/NumNatureAttr;->numEndFreq:I

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lorg/ansj/domain/NumNatureAttr;->flag:Z

    return-void
.end method
