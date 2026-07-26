.class Lmiuix/preference/StretchableWidgetPreference$1;
.super Ljava/lang/Object;
.source "StretchableWidgetPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/StretchableWidgetPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/StretchableWidgetPreference;


# direct methods
.method constructor <init>(Lmiuix/preference/StretchableWidgetPreference;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lmiuix/preference/StretchableWidgetPreference$1;->this$0:Lmiuix/preference/StretchableWidgetPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 86
    iget-object v0, p0, Lmiuix/preference/StretchableWidgetPreference$1;->this$0:Lmiuix/preference/StretchableWidgetPreference;

    # invokes: Lmiuix/preference/StretchableWidgetPreference;->stateChangeAnim(Landroid/view/View;)V
    invoke-static {v0, p1}, Lmiuix/preference/StretchableWidgetPreference;->access$000(Lmiuix/preference/StretchableWidgetPreference;Landroid/view/View;)V

    return-void
.end method
