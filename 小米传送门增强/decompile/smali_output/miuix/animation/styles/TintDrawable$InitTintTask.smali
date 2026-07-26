.class Lmiuix/animation/styles/TintDrawable$InitTintTask;
.super Ljava/lang/Object;
.source "TintDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/styles/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitTintTask"
.end annotation


# instance fields
.field private final mTintMode:I

.field final synthetic this$0:Lmiuix/animation/styles/TintDrawable;


# direct methods
.method public constructor <init>(Lmiuix/animation/styles/TintDrawable;I)V
    .registers 3

    .line 568
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable$InitTintTask;->this$0:Lmiuix/animation/styles/TintDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput p2, p0, Lmiuix/animation/styles/TintDrawable$InitTintTask;->mTintMode:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 574
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable$InitTintTask;->this$0:Lmiuix/animation/styles/TintDrawable;

    iget v1, p0, Lmiuix/animation/styles/TintDrawable$InitTintTask;->mTintMode:I

    # invokes: Lmiuix/animation/styles/TintDrawable;->initBitmap(I)V
    invoke-static {v0, v1}, Lmiuix/animation/styles/TintDrawable;->access$200(Lmiuix/animation/styles/TintDrawable;I)V

    return-void
.end method
