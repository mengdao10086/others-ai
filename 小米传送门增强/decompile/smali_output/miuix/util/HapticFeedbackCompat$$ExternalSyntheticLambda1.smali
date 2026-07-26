.class public final synthetic Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/util/HapticFeedbackCompat;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lmiuix/util/HapticFeedbackCompat;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;->f$0:Lmiuix/util/HapticFeedbackCompat;

    iput p2, p0, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;->f$0:Lmiuix/util/HapticFeedbackCompat;

    iget v1, p0, Lmiuix/util/HapticFeedbackCompat$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->$r8$lambda$jeLFbkPrlo2J0OYzJcTjCxGewII(Lmiuix/util/HapticFeedbackCompat;I)V

    return-void
.end method
