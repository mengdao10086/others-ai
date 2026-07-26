.class public final synthetic Lmiuix/flexible/template/TernaryLayoutTemplate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lmiuix/flexible/template/TernaryLayoutTemplate;

.field public final synthetic f$1:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lmiuix/flexible/template/TernaryLayoutTemplate;Landroid/view/ViewGroup;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/flexible/template/TernaryLayoutTemplate$$ExternalSyntheticLambda0;->f$0:Lmiuix/flexible/template/TernaryLayoutTemplate;

    iput-object p2, p0, Lmiuix/flexible/template/TernaryLayoutTemplate$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 3

    .line 0
    iget-object v0, p0, Lmiuix/flexible/template/TernaryLayoutTemplate$$ExternalSyntheticLambda0;->f$0:Lmiuix/flexible/template/TernaryLayoutTemplate;

    iget-object v1, p0, Lmiuix/flexible/template/TernaryLayoutTemplate$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lmiuix/flexible/template/TernaryLayoutTemplate;->$r8$lambda$aN9S91pnvHOqbBGKJok0Il-9d8U(Lmiuix/flexible/template/TernaryLayoutTemplate;Landroid/view/ViewGroup;)Z

    move-result v0

    return v0
.end method
