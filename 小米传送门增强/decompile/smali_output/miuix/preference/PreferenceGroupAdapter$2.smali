.class Lmiuix/preference/PreferenceGroupAdapter$2;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$2;->this$0:Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 115
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_a

    const/4 p2, 0x1

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
