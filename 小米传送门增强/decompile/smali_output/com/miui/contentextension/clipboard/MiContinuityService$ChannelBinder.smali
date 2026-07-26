.class public Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;
.super Landroid/os/Binder;
.source "MiContinuityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/clipboard/MiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelBinder"
.end annotation


# instance fields
.field private final mService:Lcom/miui/contentextension/clipboard/MiContinuityService;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/clipboard/MiContinuityService;)V
    .registers 2

    .line 162
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;->mService:Lcom/miui/contentextension/clipboard/MiContinuityService;

    return-void
.end method


# virtual methods
.method public getService()Lcom/miui/contentextension/clipboard/MiContinuityService;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$ChannelBinder;->mService:Lcom/miui/contentextension/clipboard/MiContinuityService;

    return-object v0
.end method
