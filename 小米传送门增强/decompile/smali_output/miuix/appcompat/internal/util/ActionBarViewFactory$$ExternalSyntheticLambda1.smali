.class public final synthetic Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/AppCompatImageView;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p2, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lmiuix/appcompat/internal/util/ActionBarViewFactory$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    invoke-static {v0, v1}, Lmiuix/appcompat/internal/util/ActionBarViewFactory;->$r8$lambda$Lrqg_yGRfifRGKQwPgoGR1oi4d4(Landroidx/appcompat/widget/AppCompatImageView;Landroid/content/Context;)V

    return-void
.end method
