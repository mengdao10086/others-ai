.class public final synthetic Lmiuix/appcompat/app/GroupButtonsPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lmiuix/internal/util/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/app/GroupButtonsPanel;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/GroupButtonsPanel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/GroupButtonsPanel$$ExternalSyntheticLambda1;->f$0:Lmiuix/appcompat/app/GroupButtonsPanel;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    .line 0
    iget-object v0, p0, Lmiuix/appcompat/app/GroupButtonsPanel$$ExternalSyntheticLambda1;->f$0:Lmiuix/appcompat/app/GroupButtonsPanel;

    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/GroupButtonsPanel;->$r8$lambda$BcRXkB-jOjxXF2_TF8hA0gyUSHc(Lmiuix/appcompat/app/GroupButtonsPanel;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lmiuix/internal/util/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
