.class public Lmiuix/animation/utils/LinkNode;
.super Ljava/lang/Object;
.source "LinkNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lmiuix/animation/utils/LinkNode;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public next:Lmiuix/animation/utils/LinkNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addToTail(Lmiuix/animation/utils/LinkNode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object v0, p0

    :goto_1
    if-ne v0, p1, :cond_4

    return-void

    .line 13
    :cond_4
    iget-object v1, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    if-nez v1, :cond_b

    .line 18
    iput-object p1, v0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    return-void

    :cond_b
    move-object v0, v1

    goto :goto_1
.end method

.method public destroy()Lmiuix/animation/utils/LinkNode;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 30
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/utils/LinkNode;->remove()Lmiuix/animation/utils/LinkNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()Lmiuix/animation/utils/LinkNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    return-object v0
.end method

.method public size()I
    .registers 3

    const/4 v0, 0x0

    move-object v1, p0

    .line 38
    :goto_2
    iget-object v1, v1, Lmiuix/animation/utils/LinkNode;->next:Lmiuix/animation/utils/LinkNode;

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    return v0
.end method
