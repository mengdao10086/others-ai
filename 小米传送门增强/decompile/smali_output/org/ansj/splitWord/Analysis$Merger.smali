.class public abstract Lorg/ansj/splitWord/Analysis$Merger;
.super Ljava/lang/Object;
.source "Analysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ansj/splitWord/Analysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Merger"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ansj/splitWord/Analysis;


# direct methods
.method public constructor <init>(Lorg/ansj/splitWord/Analysis;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lorg/ansj/splitWord/Analysis$Merger;->this$0:Lorg/ansj/splitWord/Analysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract merger()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end method
