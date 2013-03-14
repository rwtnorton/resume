Silly resume web app.

Most of this is a feeble attempt at trying to build a Rails app
that adheres to Uncle Bob's Screaming Architecture:

  http://blog.8thlight.com/uncle-bob/2011/09/30/Screaming-Architecture.html

The real domain objects are POROs in a gem under the lib dir.  The idea
is to keep the domain logic completely separate from incidentals.
