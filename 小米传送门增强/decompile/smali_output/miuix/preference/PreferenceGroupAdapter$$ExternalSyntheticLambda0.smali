.class public final synthetic Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/preference/PreferenceGroupAdapter;

.field public final synthetic f$1:Landroidx/preference/PreferenceViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceViewHolder;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;->f$0:Lmiuix/preference/PreferenceGroupAdapter;

    iput-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;->f$0:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/PreferenceViewHolder;

    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Lmiuix/preference/PreferenceGroupAdapter;->$r8$lambda$U2pa2MuQFuheRexRakl3AHdQcRc(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method
