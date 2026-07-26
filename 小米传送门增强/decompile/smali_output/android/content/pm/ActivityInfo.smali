.class public Landroid/content/pm/ActivityInfo;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# instance fields
.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public exported:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public resizeMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v0, 0x2

    .line 19
    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return-void
.end method
